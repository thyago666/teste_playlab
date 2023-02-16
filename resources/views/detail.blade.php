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
        <label><h1>User Details</h1></label><br><br>
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">E-mail</th>
                <th scope="col">Phone</th>
                <th scope="col">Type</th>
           
              </tr>
            </thead>
            <tbody>
              <tr>
                 <th scope="row">{{$user->id}}</th>
                <td>{{$user->name}}</td>
                <td>{{$user->sobrenome}}</td>
                <td>{{$user->email}}</td>
                <td>{{$user->telefone}}</td>
                <td>{{$user->tipo}}</td>
        
             </tr>
           </tbody>
          </table>
         <div class="d-grid gap-2">
          <a class="btn btn-primary" href="{{url("user")}}" type="button">Back</a>
     
          </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>

</html>