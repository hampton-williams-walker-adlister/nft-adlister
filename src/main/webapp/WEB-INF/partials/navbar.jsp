<nav class="navbar navbar-expand-lg bg-primary">
    <div class="container-fluid">

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link  ncv" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nvc" href="/ads">Ads</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link nvc" href="/ads/create">Create</a>
                </li>
            </ul>
            <form method="POST" action="/ads" class="d-flex m-0" role="search">
                <input class="form-control me-2 nvc" type="search" name="search" placeholder="Search Player's Name" aria-label="Search">
                <button class="btn nvc" type="submit">Search</button>
            </form>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link nvc" href="/login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nvc" href="/register">Register</a>
                </li>
            </ul>
        </div>
    </div>
</nav>