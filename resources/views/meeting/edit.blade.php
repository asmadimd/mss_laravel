@extends('layouts.app')

@section('template_title')
   @lang('titles.adminEditMeeting')
@endsection

@section('template_fastload_css')
@endsection

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card">
                <div class="card-header"><h3>Edit Meeting</h3></div>

                <div class="card-body">
                   <form method="post" action="/meeting/{{$meetings->id}}">

                    <input type="hidden" name="_method" value="PUT">


                   {{csrf_field()}}
                      <div class="form-group">
                        <label for="exampleFormControlInput1">Meeting Title</label>
                        <input type="text" name="title" class="form-control" id="exampleFormControlInput1" value="{{$meetings->title}}" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlTextarea1">Agenda</label>
                        <textarea class="form-control" name="agenda" id="exampleFormControlTextarea1" rows="3" value="{{$meetings->agenda}}" required></textarea>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect1">Meeting options</label>
                        <select class="form-control" name="option" id="exampleFormControlSelect1" value="{{$meetings->option}}" required>
                          <option>Formal</option>
                          <option>Informal</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <input type="date" name="date" class="form-control" id="exampleFormControlInput1" value="{{$meetings->date}}" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlInput1">Participant</label>
                        <input type="text" name="user_id" class="form-control" id="exampleFormControlInput1" placeholder="Enter participant" value="{{$meetings->user_id}}" required>
                      </div>
                      <button type="submit" class="btn btn-success"><right>Edit</right></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



@endsection

@section('footer_scripts')
@endsection
