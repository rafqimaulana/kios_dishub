<div class="sidebar">
    <div class="logo_content">
        <div class="logo">
            <div class="logo_name">
                <img src="/img/logo.png" width="30">
                Kios Dishub
            </div>
        </div>
        <i class='bx bx-menu' id="btn"></i>
    </div>
    <div class="src">
        <i class='bx bx-search-alt'></i>
        <input type="text" name="" id="" placeholder="Search..">
    </div>
    <ul class="nav">
        <li>
            <a href="#">
                <a href="/" class="{{ Request::is('home') ? 'active' : '' }}">
                    <i class='bx bxs-home-circle'></i>
                    <span class="link_name">Home</span>
                </a>
                <span class="tooltip">Home</span>
        </li>
        <li>
            <a aria-current="page" href="/dashboard" class="{{ Request::is('dashboard') ? 'active' : '' }}">
                <i class='bx bxs-dashboard'></i>
                <span class="link_name">Dashboard</span>
            </a>
            <span class="tooltip">Dashboard</span>
        </li>
        {{-- <li>
            <a href="/dashboard/keranjang" class="{{ Request::is('dashboard/keranjang*') ? 'active' : '' }}">
                <i class='bx bxs-like bx-tada'></i>
                <span class="link_name">Favorit</span>
            </a>
            <span class="tooltip">Favorit</span>
        </li> --}}
        <li>
            <a href="/dashboard/pembayaran" class="{{ Request::is('dashboard/pembayaran*') ? 'active' : '' }}">
                <i class='bx bx-dollar-circle' ></i>
                <span class="link_name">Pemesanan</span>
            </a>
            <span class="tooltip">Pemesanan</span>
        </li>
        {{-- <xx --}}
        @can('pemilik')
        {{-- <li>
            <a href="/dashboard/posts" class="{{ Request::is('dashboard/posts*') ? 'active' : '' }}">
                <i class='bx bxs-buildings'></i>
                <span class="link_name">Kios</span>
            </a>
            <span class="tooltip">Kios</span>
        </li> --}}
        <li>
            <a href="/dashboard/status" class="{{ Request::is('dashboard/status*') ? 'active' : '' }}">
                <i class='bx bxs-buildings'></i>
                <span class="link_name">Status Bayar</span>
            </a>
            <span class="tooltip">Status Bayar</span>
        </li>
        @endcan
        @can('admin')
        <li>
            <a href="/dashboard/posts" class="{{ Request::is('dashboard/posts*') ? 'active' : '' }}">
                <i class='bx bxs-buildings'></i>
                <span class="link_name">Kios</span>
            </a>
            <span class="tooltip">Kios</span>
        </li>
        {{-- <li>
            <a href="/dashboard/status" class="{{ Request::is('dashboard/status*') ? 'active' : '' }}">
                <i class='bx bxs-buildings'></i>
                <span class="link_name">Status Bayar</span>
            </a>
            <span class="tooltip">Status Bayar</span>
        </li> --}}
            {{-- <li>
                <a href="/dashboard/news" class="{{ Request::is('dashboard/news*') ? 'active' : '' }}">
                    <i class='bx bxl-blogger'></i>
                    <span class="link_name">Berita</span>
                </a>
                <span class="tooltip">Berita</span>
            </li> --}}
        {{-- <li>
            <a href="/dashboard/infos" class="{{ Request::is('dashboard/infos*') ? 'active' : '' }}">
                <i class='bx bxs-info-square'></i>
                <span class="link_name">Semua Info</span>
            </a>
            <span class="tooltip">Semua Info</span>
        </li> --}}
        @endcan
        @can('superadmin')
        <li>
            <a href="/dashboard/semuauser" class="{{ Request::is('dashboard/semuauser*') ? 'active' : '' }}">
                <i class='bx bx-user' ></i>
                <span class="link_name">Semua User</span>
            </a>
            <span class="tooltip">Semua User</span>
        </li>
        {{-- <li>
            <a href="/dashboard/status" class="{{ Request::is('dashboard/status*') ? 'active' : '' }}">
                <i class='bx bxs-buildings'></i>
                <span class="link_name">Status Bayar</span>
            </a>
            <span class="tooltip">Status Bayar</span>
        </li> --}}
        @endcan
    </ul>
</div>
