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
        <label><h1>User List</h1></label><br><br>
        <a href="{{url("user/create/")}}"><button type="button" class="btn btn-primary">Register +</button></a>
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Type</th>
                <th scope="col">Options</th>
              </tr>
            </thead>
            <tbody>
              @foreach($user as $users)
              <tr>
               <td>{{$users->id}}</td>
                <td>{{$users->name}}</td>
                <td>{{$users->tipo}}</td>
                <td>
                  <form action="{{url("user/delete/{$users->id}")}}" method="post">
                    @csrf
                    @method('delete')
                    <a href="{{url("user/edit/{$users->id}")}}"><button type="button" class="btn btn-warning">Update</button></a>
                      <button type="submit" class="btn btn-danger">Delete</button>
                    <a href="{{url("user/detail/{$users->id}")}}"><button type="button" class="btn btn-info">Details</button></a>
                    <a href="{{url("user/historic/{$users->id}")}}"><button type="button" class="btn btn-success">Historic</button></a>
                  </form>
                  </td>
                @endforeach
             </tr>
           </tbody>
          </table>
         <div class="d-grid gap-2">
            <a class="btn btn-primary" href="{{url("dashboard")}}" type="button">Back</a>
         </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>

</html>