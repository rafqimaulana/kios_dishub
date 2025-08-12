<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <link rel="icon" type="image/jpg" href="/img/logo.png">
    <title>Kios Dishub - Dashboard</title>

    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/css/trix.css">
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
        trix-toolbar [data-trix-button-group="file-tools"] {
            display: none;
        }
        .chart-container {
            position: relative;
            height: 300px;
            width: 100%;
        }
    </style>
    
    @yield('head')
</head>

<body>
    @include('dashboard.layouts.sidebar')
    
    <main class="col-12 col-md12 col-lg-10 ms-sm-auto px-md-4">
        @yield('container')
    </main>

    <!-- JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
    <script src="/js/dashboard.js"></script>
    <script src="/js/dashboardprofil.js"></script>
    <script src="/js/trix.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bs5-lightbox@1.8.0/dist/index.bundle.min.js"></script>
    
    @yield('scripts')
</body>
</html>