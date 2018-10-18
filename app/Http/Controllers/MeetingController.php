<?php

namespace App\Http\Controllers;


class MeetingController extends Controller
{
	public function new()
    {
        #error_log('yo mau yo');
        return view('meeting/new');
    }
}

?>