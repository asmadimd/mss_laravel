<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\Mail\sendMail;

class MailController extends Controller
{
    public function send()
    {
    	Mail::send(new sendMail());
    	//return "Invitation has been sent";
    	return view('meeting.email');
    }
}
