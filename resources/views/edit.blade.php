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
        <label><h1>Alter User</h1></label><br><br>
    <form method="post" action="{{url("user/update/")}}">
        @method('PUT')
          @csrf
          <input type="hidden" name="id" value="{{$user->id}}">
        <div class="mb-3">
            <label class="form-label">First Name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{$user->name}}">
          </div>
          <div class="mb-3">
            <label class="form-label">Last Name</label>
            <input type="text" class="form-control" id="sobrenome" name="sobrenome" value="{{$user->sobrenome}}">
          </div>
          <div class="mb-3">
            <label class="form-label">Phone</label>
            <input type="text" class="form-control" id="telefone" name="telefone" value="{{$user->telefone}}">
          </div>
          <div class="mb-3">
            <label class="form-label">E-mail</label>
            <input type="email" class="form-control" id="email" name="email" value="{{$user->email}}">
          </div>
          <div class="mt-3"> 
            <select class="form-select" aria-label="Default select example" id="tipo" name="tipo">
                <option selected>TIPO</option>
                @if ($user->tipo == 'Admin')
                <option value="{{$user->tipo}}" selected>Admin</option>
                @else
                <option value="{{$user->tipo}}" selected>Usuário</option>
                @endif
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" value="{{$user->password}}">
          </div>
          <br>
         <div class="d-grid gap-2">
            <button class="btn btn-primary" type="submit">Save</button>
            <a class="btn btn-primary" href="{{url("user")}}" type="button">Back</a>
     
          </div>
        </form>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>

</html>