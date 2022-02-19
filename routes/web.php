<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MessageController;

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


Route::middleware(['auth', 'verified'])->group(function () {
    Route::view('home', 'home')->name('home');
    Route::view('messageBox', 'messageBox')->name('messageBox');

    Route::get('/message-box', [MessageController::class, 'messageBox']);
    Route::post('/send-message', [MessageController::class, 'sendMessage'])->name('send-message');

});


Route::get('/', function () {
    return view('welcome');
});


