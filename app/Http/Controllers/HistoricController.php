<?php

namespace App\Http\Controllers;
use App\Models\Historic;
use App\Models\User;
use Illuminate\Support\Facades\Gate;
use Illuminate\Http\Request;

class HistoricController extends Controller
{
    public function index($id){

        if(Gate::denies('acesso_crud')){
           abort(403,'access denied');
        }
        $dado = User::with('historics')->first()->find($id);
        $name = $dado->name;
        return view('historic',compact('name','dado'));
    

    }
}
