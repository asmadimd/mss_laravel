@extends('layouts.app')

@section('template_title')
   @lang('titles.adminCreateMeeting')
@endsection

@section('template_fastload_css')
@endsection

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card">
                <div class="card-header"><h3>Create Meeting</h3></div>

                <div class="card-body">
                   <form method="post" action="/meeting">
                   {{csrf_field()}}
                      <div class="form-group">
                        <label for="exampleFormControlInput1">Meeting Title</label>
                        <input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="Insert title of meeting here" required></input>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlTextarea1">Agenda</label>
                        <textarea class="form-control" name="agenda" id="exampleFormControlTextarea1" rows="3" placeholder="Insert agenda of meeting here" required></textarea>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect1">Meeting options</label>
                        <select class="form-control" name="option" id="exampleFormControlSelect1" required>
                          <option>Formal</option>
                          <option>Informal</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect1">Select date</label>
                        <input type="date" name="date" class="form-control" id="exampleFormControlInput1" placeholder="Enter date"></input>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect1">Start time</label>
                        <select class="form-control" type="text" name="start" id="exampleFormControlSelect1" required>
                          <option>07:30</option>
                          <option>08:00</option>
                          <option>08:30</option>
                          <option>09:00</option>
                          <option>09:30</option>
                          <option>10:00</option>
                          <option>11:30</option>
                          <option>12:00</option>
                          <option>12:30</option>
                          <option>13:00</option>
                          <option>13:30</option>
                          <option>14:00</option>
                          <option>14:30</option>
                          <option>15:00</option>
                          <option>15:30</option>
                          <option>16:00</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect1">End time</label>
                        <select class="form-control" type="text" name="finish" id="exampleFormControlSelect1" required>
                          <option>08:00</option>
                          <option>08:30</option>
                          <option>09:00</option>
                          <option>09:30</option>
                          <option>10:00</option>
                          <option>11:30</option>
                          <option>12:00</option>
                          <option>12:30</option>
                          <option>13:00</option>
                          <option>13:30</option>
                          <option>14:00</option>
                          <option>14:30</option>
                          <option>15:00</option>
                          <option>15:30</option>
                          <option>16:00</option>
                          <option>16:30</option>
                        </select>
                      </div>
                      <!--<div class="form-group">
                        <label for="exampleFormControlInput1">Participant</label>
                        <input type="text" name="user_id" class="form-control" id="exampleFormControlInput1" placeholder="Enter participant" required></input>
                      </div>-->
                      <div class="form-group">
                      {!! Form::Label('user', 'Participant:') !!}
                        
                        <select class="form-control" name="user_id">
                        @foreach($users as $user)
                          <option value="{{$user->id}}">{{$user->email}}</option>
                        @endforeach
                        
                        </select>
                      </div>


                      <button type="submit" class="btn btn-success"><right>Create</right></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



@endsection

@section('footer_scripts')
@endsection
