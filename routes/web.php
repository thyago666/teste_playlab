<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::middleware('auth')->group(function () {

Route::get('/user', [App\Http\Controllers\UserController::class, 'index'])->name('listaUser');
Route::get('user/detail/{id}', [App\Http\Controllers\UserController::class, 'show']);
Route::get('user/create/', [App\Http\Controllers\UserController::class, 'create']);
Route::post('user/store/', [App\Http\Controllers\UserController::class, 'store']);
Route::get('user/edit/{id}', [App\Http\Controllers\UserController::class, 'edit']);
Route::put('user/update/', [App\Http\Controllers\UserController::class, 'update']);
Route::delete('user/delete/{id}', [App\Http\Controllers\UserController::class, 'destroy']);

Route::post('user/api', [App\Http\Controllers\apiController::class, 'exibirVideos']);

Route::get('user/historic/{id}', [App\Http\Controllers\HistoricController::class, 'index']);


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::get('/logout', function () {
   Auth::logout();
   return view('welcome');
});


    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
