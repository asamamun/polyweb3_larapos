<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{{asset("build/assets/css/bootstrap.min.css")}}">
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Navbar</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      BS
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="{{url('carousel/12/test')}}">Carousel</a></li>
                      <li><a class="dropdown-item" href="{{url('card')}}">Card</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="{{url('scrollspy')}}">scrollspy</a></li>
                      <li><a class="dropdown-item" href="{{url('placeholder')}}">placeholder</a></li>
                      <li><a class="dropdown-item" href="{{url('here')}}">Here</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="{{url("alllogs")}}" tabindex="-1" aria-disabled="true">All Logs</a>
                  </li>
                </ul>
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                @if (Route::has('login'))
                <ul class="navbar-nav mb-2 mb-lg-0">
                    @auth
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="{{route('dashboard')}}">Dashboard</a>
                      </li>
                      @else
                      <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="{{route('login')}}">Login</a>
                      </li>
                      @if (Route::has('register'))
                      <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="{{route('register')}}">Register</a>
                      </li>
                      @endif
                      @endauth
                </ul>
                @endif
              </div>
            </div>
          </nav>
          {{-- category --}}
          @foreach ($cat as $cat)
          <a class="btn btn-outline-dark mt-3" href="{{url('catagory/'.$cat->id)}}">{{$cat->name}}</a>
          @endforeach
          <h5 class="mt-2">Showing Products of {{$cat->name}}</h5>
          {{-- category end --}}
        <hr>

        <div class="container-fluid bg-trasparent my-4 p-3" style="position: relative;"> 
          <div class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">
            @foreach ($products as $product)
            <div class="col"> 
                <div class="card h-100 shadow-sm">
                  <img src="{{asset('storage/'.$product->image)}}" height="250px" class="card-img-top" alt="...">
                    <div class="card-body">
                      <div class="clearfix mb-3">
                        <span class="float-start badge rounded-pill bg-primary">{{$product->name}} in {{$product->catagory->name}}</span>
                        <span class="float-end price-hp">৳{{$product->saleprice}}</span>
                      </div> 
                      <p>{{$product->description}}<span id="dots">...</span><span id="more"></span></p>

<button class="btn btn-success" onclick="myFunction()" id="myBtn">Read more</button>
                        <p class="card-title"></p> 
                      <div class="text-center my-4"> <a href="#" class="btn btn-warning">Check offer</a>
                        <p class="card-text text-muted"><small class="text-muted">Last updated 3 mins ago</small></p> </div> 
                  </div> 
              </div> 
            </div>
            @endforeach
          </div> 
        </div>
        {{$products->onEachSide(3)->links() }}
    </div>
    <script src="{{asset("build/assets/js/bootstrap.bundle.min.js")}}"></script>
</body>
</html>