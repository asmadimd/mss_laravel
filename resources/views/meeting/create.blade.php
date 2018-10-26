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
                   <form>
                      <div class="form-group">
                        <label for="exampleFormControlInput1">Meeting Title</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Insert title of meeting here" required>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlTextarea1">Agenda</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Insert agenda of meeting here" required></textarea>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect1">Meeting options</label>
                        <select class="form-control" id="exampleFormControlSelect1" required>
                          <option>Formal</option>
                          <option>Informal</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect1">Select date</label>
                        <select class="form-control" id="exampleFormControlSelect1" required>
                          <option>Date 1</option>
                          <option>Date 2</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlInput1">Participant</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter participant" required>
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
