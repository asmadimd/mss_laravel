<?php

namespace App\Http\Controllers;

use Auth;
use App\Meeting;
use App\User;
use Illuminate\Http\Request;

class UserMeetingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

       //$meetings = Meeting::all();

        //$user = User::find($id);
        $currentuserid = Auth::user()->id;
        $meetings = Meeting::where("user_id", "=", $currentuserid)->get();


        return view('usermeeting.index', compact('meetings'));
    }

    public function store(Request $request)
    {
        //get request from create form
        //return $request->all();

        $input = $request->all();
        $input['title'] = $request->title;
        $input['agenda'] = $request->agenda;
        $input['option'] = $request->option;
        $input['start'] = $request->start;
        $input['finish'] = $request->finish;
        $input['user_id'] = $request->user_id;

        Meeting::create($request->all());
        return redirect('/meeting');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $meetings = Meeting::findOrFail($id);

        return view('usermeeting.show', compact('meetings'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $meetings = Meeting::findOrFail($id);

        return view('meeting.edit', compact('meetings'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $meeting = Meeting::findOrFail($id);

        $meeting->update($request->all());

        return redirect('/meeting');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $meetings = Meeting::whereId($id)->delete();

        return redirect('/meeting');
    }

    public function feedback(){
        return view('meeting.feedback');
    }

    public function email(){
        return view('meeting.email');
    }
}
