<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Gate;

use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Gate::denies('acesso_crud')){
            abort(403,'access denied');
         }
        $user = User::all();
        return view('users',compact('user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Gate::denies('acesso_crud')){
            abort(403,'access denied');
         }
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(Gate::denies('acesso_crud')){
            abort(403,'access denied');
         }
        $user = $request->all();
       $user['password'] = bcrypt($user['password']);
       User::create($user);
       return redirect()->route('listaUser');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(Gate::denies('acesso_crud')){
            abort(403,'access denied');
         }
        $user = User::find($id);
        return view('detail',compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Gate::denies('acesso_crud')){
            abort(403,'access denied');
         }
        $user = User::find($id);
        return view('edit',compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        if(Gate::denies('acesso_crud')){
            abort(403,'access denied');
         }
        $data = $request->only(['name','sobrenome','tipo','telefone','email','password']);
        $user = User::find($request->id);
        $user->update($data);
        return redirect()->route('listaUser');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(Gate::denies('acesso_crud')){
            abort(403,'access denied');
         }
        $user = User::find($id);
        $user->delete();
        return redirect()->route('listaUser');
    }
}
