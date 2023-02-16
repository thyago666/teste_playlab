<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use App\Models\Historic;

class apiController extends Controller
{
  public function __construct()
  {
      $this->middleware('auth');
  }

  public function exibirVideos(Request $request){
      $id_user = auth()->user()->id;
      $dados_busca = new Historic([
        'user_id'=>$id_user,
        'busca'=>$request->busca,
          ]);
        $dados_busca->save();

      $dados = $request->all();
      $chave = "AIzaSyCIEoNgmYxY5MTAULIBjzNi4qw3r7pton0";
       $busca = $dados['busca'];
        $qtd = $dados['qtd'];
       $response = Http::get('https://youtube.googleapis.com/youtube/v3/search?maxResults='.$qtd.'&q='.$busca.'&key='.$chave)->json();
        return view('exibeLista',compact('response'));
      }
}
