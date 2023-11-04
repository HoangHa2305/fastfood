<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Recruit;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;

class RecruitApiController extends Controller
{
    public function getRecruit()
    {
        $recruit = Recruit::orderBy('id','desc')->get();

        return response()->json(['recruit'=>$recruit]);
    }

    public function detailRecruit($id)
    {
        $recruit = Recruit::where('id',$id)->get();

        return response()->json(['recruit'=>$recruit]);
    }

    public function postComment(Request $request)
    {
        $comment = new Comment();
        $comment->recuit_id = $request->recuit_id;
        $comment->user_id = $request->user_id;
        $comment->content = $request->content;
        $comment->active = 1;
        $comment->save();

        $user = User::find($comment->user_id);
        $dateObject = Carbon::parse($comment->created_at);
        $date = $dateObject->format('Y-m-d H:i:s');
        return response()->json([
            'content' => $comment->content,
            'date' => $date,
            'name' => $user->name
        ]);
    }

    public function getComment($id)
    {
        $comment = Comment::join('users','comments.user_id','=','users.id')
                    ->select('comments.content as content','users.name as name','comments.created_at as date')
                    ->where('comments.recuit_id',$id)
                    ->get();

        return response()->json(['data'=>$comment]);
    }
}
