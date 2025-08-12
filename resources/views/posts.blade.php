@extends('layouts.main')

@section('container')

    <h1 class="text-center text-success fw-bold">{{ $title }}</h1>

    <div class="row d-flex justify-content-center mb-5 mt-5">
        <div class="col-12 col-md-12 col-lg-12">
            <form action="/posts">
                @if (request('province'))
                    <input type="hidden" name="province" value="{{ request('province') }}">
                @endif
                @if (request('author'))
                    <input type="hidden" name="author" value="{{ request('author') }}">
                @endif
                <div class="input-group input-cari mb-3 mx-auto">
                    <input type="search" class="form-control input__search" placeholder="Cari berdasarkan lokasi..."
                        name="search" id="search" value="{{ request('search') }}">
                    <button class="btn btn-danger button-primary" type="submit">Cari</button>
                </div>
            </form>
        </div>
    </div>

    <section id="rekomendasi">
        <div class="container">
            @forelse ($groupedPosts as $village => $posts)
                <h3 class="fw-bold text-primary mt-4">{{ $village }}</h3>
                <div class="row">
                    @foreach ($posts as $post)
                        <div class="col-12 col-md-6 col-lg-4 mb-5">
                            <div class="card card__kos p-2">
                                <div class="kota position-absolute rounded px-3 py-2"
                                    style="background-color: rgba(0, 0, 0, 0)">
                                    <a class="text-decoration-none text-white fw-bold"
                                        href="/posts?province={{ $post->province->slug }}">{{ $post->province->name }}</a>
                                </div>
                                <div class="kota position-absolute rounded"
                                    style="background-color: rgba(0, 0, 0, 0); right: 15px;margin-top: 7px"><a
                                        class="text-decoration-none text-white" href="/posts/{{ $post->slug }}"><img
                                            src="/img/eye.svg" alt=""></a></div>
                                <div class="kota position-absolute rounded"
                                    style="background-color: rgba(0, 0, 0, 0); left: 15px;margin-top: 208px">
                                    <h4>Rp {{ $post->price }}</h4>
                                </div>
                                <a href="/posts/{{ $post->slug }}">
                                    @if ($post->image)
                                        <img src="{{ asset('storage/' . $post->image) }}"
                                            alt="{{ $post->province->name }}" class="card-img-top">
                                    @else
                                        <img src="https://source.unsplash.com/1200x1500?{{ $post->province->name }}"
                                            alt="{{ $post->province->name }}" class="card-img-top">
                                    @endif
                                </a>
                                <div class="card-body">
                                    <span class="d-flex justify-content-between">
                                        <h3 class="card-title"><a class="text-decoration-none"
                                                href="/posts/{{ $post->slug }}">{{ $post->name }}</a>
                                        </h3>
                                        <a href="/posts?jenis={{ $post->jenis->slug }}"
                                            class="text-decoration-none jenis__kos">
                                            {{ $post->jenis->name }}
                                        </a>
                                    </span>
                                    <p style="margin-top: -10px">
                                        <small class="sub__title">
                                            Pemilik: <a class="text-decoration-none"
                                                href="/posts?author={{ $post->author->username }}">{{ $post->author->name }}</a>
                                            terakhir update {{ $post->updated_at->format('d-m-y') }}
                                        </small>
                                    </p>
                                    <div class="d-flex align-items-lg-center" style="margin-top: -10px">
                                        <div>
                                            <img src="/img/map.svg" class="d-block d-lg-inline mx-auto" alt="">
                                        </div>
                                        <p class="card-text"
                                            style="margin-left: 5px; display: inline-block; width: 600px">
                                            {{ $post->alamat }}</p>
                                    </div>
                                    <div class="card-fasilitas mt-4 d-flex px-4">
                                        <span>
                                            <img src="/img/bed.png" alt="">
                                            <h6>{{ $post->kamar }}</h6>
                                        </span>
                                        <span class="text-center">
                                            <img src="/img/bathtub.png" alt="">
                                            <h6>{{ $post->kamarmandi }}</h6>
                                        </span>
                                        <span>
                                            <img src="/img/bedroom.png" alt="">
                                            <h6>{{ $post->tipekamar }} meter</h6>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @empty
                <p class="text-center fs-4 text-success fw-bold">No Post Found.</p>
            @endforelse
        </div>
    </section>

@endsection
