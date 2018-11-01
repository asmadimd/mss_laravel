@extends('layouts.app')

@section('template_title')
   @lang('titles.adminViewAll')
@endsection

@section('template_fastload_css')
@endsection

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card">
                <div class="card-header"><h3>{{$meetings->title}}</h3></div>
                <p>  Meeting title: {{$meetings->title}}</p></br>
                <p>  Agenda: {{$meetings->agenda}}</p></br>
                <p>  Option: {{$meetings->option}}</p></br>
                <p>  Date: {{$meetings->date}}</p></br>


                

            </div>
        </div>
    </div>
</div>



@endsection

@section('footer_scripts')
@endsection
