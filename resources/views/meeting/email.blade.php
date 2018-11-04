@extends('layouts.app')

@section('template_title')
   @lang('titles.adminSend')
@endsection

@section('template_fastload_css')
@endsection

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card">
                <div class="card-header">Email invitation</div>

                <div class="card-body">
                    Email Invitation has been successfully sent.
                </div>
            </div>
        </div>
    </div>
</div>



@endsection

@section('footer_scripts')
@endsection
