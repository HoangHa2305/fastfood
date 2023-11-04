<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use Illuminate\Http\Request;

class CategoryApiController extends Controller
{
    public function getCategory()
    {
        $category = Menu::all();

        return response()->json(['category'=>$category]);
    }
}
