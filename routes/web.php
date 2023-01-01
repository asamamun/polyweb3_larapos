<?php

use App\Http\Controllers\CatagoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\LogpathController;
use App\Http\Controllers\pagesController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SupplierController;
use App\Models\User;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\SaleController;
use App\Http\Controllers\PurchaseController;
use App\Http\Controllers\ReportController;

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
Route::get('/', [FrontController::class, 'index']);
Route::get('/catagory/{id}', [FrontController::class, 'catproducts']);
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');
Route::get('/message', function () {
    return view('welcome');
})->name('message');
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::Resource('/catagory', CatagoryController::class);
    Route::Resource('/supplier', SupplierController::class);
    Route::Resource('/customer', CustomerController::class);
    Route::Resource('/product', ProductController::class);
    Route::Resource('/sale', SaleController::class);
    Route::Resource('/purchase', PurchaseController::class);
    Route::get("/invoice/{id}",[SaleController::class, 'invoice']);
    Route::get("/pinvoice/{id}",[PurchaseController::class, 'invoice']);
    Route::get("/reports",[ReportController::class, 'index']);
    Route::get("/dailyreports",[ReportController::class, 'dailyreport']);
    Route::post("/dailyreports",[ReportController::class, 'dailyreportpost']);

    Route::get('/alllogs', [LogpathController::class, 'showlogs'])->middleware('PathLog');
    Route::get('/userdetails/{user}', [UserController::class, 'show'])->middleware('PathLog');
    Route::get('/users/{user}', function (User $user) {
        return $user->email . " (" . $user->name . ") : " . $user->role;
    });
});

require __DIR__ . '/auth.php';
