<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Jenis;
use App\Models\Category;
use Illuminate\Support\Facades\Auth;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use App\Models\Province;
use App\Models\Regency;
use App\Models\District;
use App\Models\pembayaran;
use App\Models\Village;

class pembayaranController extends Controller
{
public function index(Request $request)
{
    $query = Pembayaran::with('post');
    
    if (!Auth::user()->is_admin == "1") {
        $query->where('user_id', auth()->user()->id);
    }

    // Date filtering
    if ($request->has('start_date') && $request->has('end_date')) {
        $query->whereBetween('created_at', [
            $request->start_date,
            $request->end_date
        ]);
    }

    $pembayaran = $query->get();
    
    // Calculate total price
    $totalPrice = $pembayaran->sum(function($item) {
        $text = $item->post->price;
        $number = filter_var($text, FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
        return (int) str_replace('.', '', $number);
    });

    // Prepare chart data (group by day)
    $chartData = $pembayaran->groupBy(function($item) {
        return $item->created_at->format('Y-m-d');
    })->map(function($dayItems) {
        return $dayItems->sum(function($item) {
            $text = $item->post->price;
            $number = filter_var($text, FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
            return (int) str_replace('.', '', $number);
        });
    });

    // Sort by date
    $chartData = $chartData->sortKeys();

    return view('dashboard.pembayaran.index', [
        'pembayaran' => $pembayaran,
        'totalPrice' => $totalPrice,
        'chartLabels' => $chartData->keys()->map(function($date) {
            return \Carbon\Carbon::parse($date)->format('d M');
        }),
        'chartValues' => $chartData->values(),
    ]);
}

    public function edit(pembayaran $pembayaran)
    {
        return view('dashboard.pembayaran.edit', [
            'pembayaran' => $pembayaran,
        ]);
    }

    public function update(Request $request, pembayaran $pembayaran)
    {
        $rules = [
            'image' => 'image|file|max:100000',
            'user_id' => 'required|max:500',
            'status' => 'required|max:500',

        ];

        if ($request->slug != $pembayaran->slug) {
            $rules['slug'] = 'required|unique:pembayarans';
        }

        $validatedData = $request->validate($rules);

        if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['image'] = $request->file('image')->store('post-images');
        }

        pembayaran::where('id', $pembayaran->id)->update($validatedData);

        return redirect('/dashboard/pembayaran')->with('success', 'Transaksi Berhasil Diubah!');
    }


    public function destroy(pembayaran $pembayaran)
    {

        if ($pembayaran->image) {
            Storage::delete($pembayaran->image);
        }

        pembayaran::destroy($pembayaran->id);

        return redirect('/dashboard/pembayaran')->with('success', 'pembayaran has been deleted!');
    }



}
