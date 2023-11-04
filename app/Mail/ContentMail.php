<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContentMail extends Mailable
{
    use Queueable, SerializesModels;

    public $name;
    public $email;
    public $content;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($name,$email,$content)
    {
        $this->name = $name;
        $this->email = $email;
        $this->content = $content;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Liên hệ')->view('mail.contact');
    }
}