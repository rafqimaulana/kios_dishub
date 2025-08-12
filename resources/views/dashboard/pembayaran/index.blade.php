@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Pemesanan Anda</h1>
</div>

@if (session()->has('success'))
    <div class="alert alert-success col-lg-8" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="mb-4">
    <form action="/dashboard/pembayaran" method="GET" class="row g-3">
        <div class="col-md-4">
            <label for="start_date" class="form-label">Dari Tanggal</label>
            <input type="date" class="form-control" id="start_date" name="start_date" 
                   value="{{ request('start_date') }}">
        </div>
        <div class="col-md-4">
            <label for="end_date" class="form-label">Sampai Tanggal</label>
            <input type="date" class="form-control" id="end_date" name="end_date" 
                   value="{{ request('end_date') }}">
        </div>
        <div class="col-md-4 d-flex align-items-end">
            <button type="submit" class="btn btn-primary me-2">Filter</button>
            <a href="/dashboard/pembayaran" class="btn btn-secondary">Reset</a>
        </div>
    </form>
</div>

<div class="row mb-4">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                <h5>Trend Pembayaran</h5>
            </div>
            <div class="card-body">
                <div class="chart-container">
                    <canvas id="paymentChart"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <h5>Total Pendapatan</h5>
            </div>
            <div class="card-body text-center">
                <h3>Rp. {{ number_format($totalPrice, 0, ',', '.') }}</h3>
                @if(request('start_date') && request('end_date'))
                <p class="text-muted">
                    {{ \Carbon\Carbon::parse(request('start_date'))->format('d M Y') }} - 
                    {{ \Carbon\Carbon::parse(request('end_date'))->format('d M Y') }}
                </p>
                @endif
            </div>
        </div>
    </div>
</div>

<div class="table-responsive col-lg-12">
    @can('admin')
    <a href="/dashboard/semuapembayaran" class="btn btn-primary mb-3">Semua Pembayaran</a>
    @endcan
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Nama Kios</th>
                <th scope="col">Kota</th>
                <th scope="col">Status</th>
                <th scope="col">Harga</th>
                <th scope="col">Penyewa</th>
                <th scope="col">Tanggal</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($pembayaran as $item)
                <tr>
                    @php
                        $text = $item->post->price;
                        $number = filter_var($text, FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                        $integer = (int) str_replace('.', '', $number);
                    @endphp
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $item->post->name }}</td>
                    <td>{{ $item->post->regency->name }}</td>
                    <td>{{ $item->status }}</td>
                    <td>Rp. {{ number_format($integer, 0, ',', '.') }}</td>
                    <td>{{ $item->author->username }}</td>
                    <td>{{ $item->created_at->format('d-m-Y') }}</td>
                    <td>
                        <a href="/dashboard/pembayaran/{{ $item->slug }}/edit" class="badge bg-warning">
                            <span data-feather="edit" class="align-text-bottom"></span>
                        </a>
                        <form action="/dashboard/pembayaran/{{ $item->slug }}" method="POST" class="d-inline">
                            @method('delete')
                            @csrf
                            <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')">
                                <span data-feather="x-circle" class="align-text-bottom"></span>
                            </button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

@section('scripts')
<script>
// Use window.onload to ensure everything is ready
window.onload = function() {
    console.log('Initializing chart...');
    
    const ctx = document.getElementById('paymentChart');
    if (!ctx) {
        console.error('Canvas element not found!');
        return;
    }

    // Verify Chart.js is loaded
    if (typeof Chart === 'undefined') {
        console.error('Chart.js is not loaded!');
        return;
    }

    try {
        const paymentChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: @json($chartLabels),
                datasets: [{
                    label: 'Total Pembayaran',
                    data: @json($chartValues),
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 2,
                    tension: 0.4,
                    fill: true,
                    pointBackgroundColor: 'rgba(54, 162, 235, 1)',
                    pointRadius: 5,
                    pointHoverRadius: 7
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    tooltip: {
                        callbacks: {
                            label: function(context) {
                                return 'Rp. ' + context.raw.toLocaleString('id-ID');
                            }
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: {
                            callback: function(value) {
                                return 'Rp. ' + value.toLocaleString('id-ID');
                            }
                        },
                        grid: {
                            color: 'rgba(0, 0, 0, 0.1)'
                        }
                    },
                    x: {
                        grid: {
                            display: false
                        }
                    }
                }
            }
        });
        console.log('Chart created successfully');
    } catch (error) {
        console.error('Error creating chart:', error);
    }
};
</script>
@endsection