<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
        <nav class="navbar bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="{{url("user")}}">
               <!-- <img src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">-->
        Usuários
              </a>
              <a class="navbar-brand" href="{{url("logout")}}">
                Logout
              </a>
            </div>
          </nav>

          <form action="{{url("user/api")}}" method="post">
            @csrf
        <div class="mb-9">
            <label for="exampleFormControlInput1" class="form-label">Informe aqui sua busca</label>
            <input type="text" class="form-control" id="busca" name="busca">
        </div>
                <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Qtd de Videos</label>
            <input type="number" class="form-control" id="qtd" value="10" name="qtd">
          </div>
          <div class="d-grid gap-2">
            <button class="btn btn-primary" type="submit">Buscar</button>
         </div>
          </form>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>

</html>
