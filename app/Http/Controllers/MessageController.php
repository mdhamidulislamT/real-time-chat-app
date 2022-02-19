<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events\MyEvent;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class MessageController extends Controller
{
    public function messageBox()
    {
        return view('message-box');
    }


    function sendMessage(Request $request)
    {
        $channelData = "2022";
        $myMessage = $request->input('myMessage');
        event(new MyEvent($myMessage, $channelData));


        $userId = random_int(1, 10);

        if ($userId % 2 == 0) {
            $userTypeId = 2;
        } else {
            $userTypeId = 1;
        }
        $createdAt = Carbon::now();

       $result =  DB::table('messages')->insert([
            [
                'user_type_id' => $userTypeId, 'user_id' => $userId, 'message' => $myMessage,
                'created_at' => $createdAt
            ],
        ]);
        return $result;

    }
}
