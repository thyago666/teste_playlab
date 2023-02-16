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

      <table class="table">
        <thead>
          <tr>
           <th scope="col">Id do Video</th>
        </tr>
        </thead>
        <tbody>
          @foreach($response['items'] as $ids)
          <tr>
            @if (isset($ids['id']['videoId']))
           <td><a href="https://www.youtube.com/watch?v={{$ids['id']['videoId']}}">{{$ids['id']['videoId']}}</a></td>
          @elseif(isset($ids['id']['channelId']))
          <td><a href="https://www.youtube.com/watch?v={{$ids['id']['channelId']}}">{{$ids['id']['channelId']}}</a></td>
          @endif 
          @endforeach
          </tr>
       </tbody>
      </table>
      <a class="btn btn-primary" href="{{url("dashboard")}}" type="button">Back</a>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>








 
      
       
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>

</html>