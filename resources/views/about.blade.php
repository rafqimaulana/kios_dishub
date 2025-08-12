@extends('layouts.main')

@section('container')
    {{-- <h1 class="text-center text-success fw-bold">{{ $title }}</h1> --}}

    <section class="about" id="about">

        <div class="container about">

            <div class="row featurette d-flex align-items-lg-center">
                <div class="col-md-7">
                    <h2 class="featurette-heading fw-bold lh-1">Aplikasi Pencari Kios Dinas Perhubungan</span></h2>
                    <p class="lead">Cari Kios</p>
                </div>
                <div class="col-md-5">
                    <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="300"
                        height="300" src="/img/about1.png" preserveAspectRatio="xMidYMid slice" focusable="false">
                </div>
            </div>



            <div class="row featurette d-flex align-items-lg-center">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading fw-bold lh-1">Informasi Data Kios Yang Lengkap</span></h2>
                    <p class="lead">Cari Kios yang disediakan oleh Dinas Perhubungan Provinsi Kalimantan Timur</p>
                </div>
                <div class="col-md-5 order-md-1">
                    <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="400"
                        height="400" src="/img/about2.png" preserveAspectRatio="xMidYMid slice" focusable="false">

                </div>
            </div>


            <div class="row featurette d-flex align-items-lg-center">
                <div class="col-md-7">
                    <h2 class="featurette-heading fw-bold lh-1">Penghubung Pemilik dan Pencari Kios</span></h2>
                    <p class="lead">Website Menghubungkan antara pemilik dan pencari kios di provinsi Kalimantan Timur</p>
                </div>
                <div class="col-md-5">
                    <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="300"
                        height="300" src="/img/about3.png" preserveAspectRatio="xMidYMid slice" focusable="false">
                </div>
            </div>

            <div class="row featurette d-flex align-items-lg-center">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading fw-bold lh-1">Data Kios di Kalimantan Timur</span></h2>
                    <p class="lead">Website yang menyediakan kios yang ada di provinsi Kalimantan Timur</p>
                </div>
                <div class="col-md-5 order-md-1">
                    <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="300"
                        height="300" src="/img/about4.png" preserveAspectRatio="xMidYMid slice" focusable="false">
                </div>
            </div>

        </div>
    </section>
@endsection
