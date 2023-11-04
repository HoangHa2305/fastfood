<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Slider;
use Illuminate\Http\Request;

class SliderApiController extends Controller
{
    public function getSlider()
    {
        $slider = Slider::all();

        return response()->json(['slider'=>$slider]);
    }
}
