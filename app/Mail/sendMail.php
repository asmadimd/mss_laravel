<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class sendMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $emails = ['14b3370@ubd.edu.bn', '14b8338@ubd.edu.bn', '15b8039@ubd.edu.bn'];
        $this->view('mail')->from('mss.system2018@gmail.com', 'UBD MSS System');
        return $this->view('mail')->to($emails);
    }
}
