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
                <div class="card-header"><h3>All Meeting</h3></div>

                <table class="table">
                  <thead>
                  <tr>
                  <th scope="col">Title</th>
                  <th scope="col">Option</th>
                  <th scope="col">Date</th>
                  <th scope="col">Start</th>
                  <th scope="col">End</th>
                  <th scope="col">Manage</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($meetings as $meeting)
                <tr>
                    <td>{{$meeting->title}} </a></td>
                    <td>{{$meeting->option}}</td>
                    <td>{{$meeting->date}}</td>
                    <td>{{$meeting->start}}</td>
                    <td>{{$meeting->finish}}</td>
                    <td><a href="{{route('usermeeting.show', $meeting->id)}}">Show</a>

                  </td>
                    @endforeach
                </tr>
                </tbody>
                </table>

              </div>

            </div>
        </div>
    </div>
</div>



@endsection

@section('footer_scripts')
@endsection
