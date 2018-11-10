<nav class="navbar navbar-expand-md navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            Meeting Scheduler System
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            <span class="sr-only">{!! trans('titles.toggleNav') !!}</span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            {{-- Left Side Of Navbar --}}
            <ul class="navbar-nav mr-auto">
                @role('admin')
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {!! trans('titles.adminDropdownNav') !!}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                            <a class="dropdown-item {{ Request::is('users', 'users/' . Auth::user()->id, 'users/' . Auth::user()->id . '/edit') ? 'active' : null }}" href="{{ url('/users') }}">
                                @lang('titles.adminUserList')
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('users/create') ? 'active' : null }}" href="{{ url('/users/create') }}">
                                @lang('titles.adminNewUser')
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('timeslot') ? 'active' : null }}" href="{{ url('/timeslot/') }}">
                                @lang('titles.adminTimeslotFinder')
                            </a>
                            <!--<div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('meeting.feedback') ? 'active' : null }}" href="{{ url('meeting/feedback') }}">
                                @lang('titles.adminViewFeedback')
                            </a>-->
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('send') ? 'active' : null }}" href="{{ url('/send') }}">
                                @lang('titles.adminSend')
                            </a>
                        </div>
                    </li>
                @endrole
            </ul>

            {{-- Left Side Of Navbar --}}
            <ul class="navbar-nav mr-auto">
                @role('lecturer, student') 
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            User
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                            <a class="dropdown-item {{ Request::is('usermeeting.index') ? 'active' : null }}" href="{{ url('usermeeting/') }}">
                                @lang('titles.userMeeting')
                            </a>
                        </div>
                    </li>
                @endrole
            </ul>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            {{-- Left Side Of Navbar --}}
            <ul class="navbar-nav mr-auto">
                @role('admin')
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {!! trans('titles.adminMeetingNav') !!}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                            <a class="dropdown-item {{ Request::is('meeting.create', 'meeting.create' . Auth::user()->id, 'meeting.create' . Auth::user()->id . 'meeting.create') ? 'active' : null }}" href="{{ url('meeting/create') }}">
                                @lang('titles.adminCreateMeeting')
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('meeting.index', 'meeting.index' . Auth::user()->id, 'meeting.index' . Auth::user()->id . 'meeting.index') ? 'active' : null }}" href="{{ url('meeting/') }}">
                                @lang('titles.adminMeetingIndex')
                            </a>
                        </div>
                    </li>
                @endrole
            </ul>

            {{-- Right Side Of Navbar --}}
            <ul class="navbar-nav ml-auto">
                {{-- Authentication Links --}}
                @guest
                    <li><a class="nav-link" href="{{ url('about') }}">{{ trans('titles.about') }}</a></li>
                    <li><a class="nav-link" href="{{ route('login') }}">{{ trans('titles.login') }}</a></li>
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            @if ((Auth::User()->profile) && Auth::user()->profile->avatar_status == 1)
                                <img src="{{ Auth::user()->profile->avatar }}" alt="{{ Auth::user()->name }}" class="user-avatar-nav">
                            @else
                                <div class="user-avatar-nav"></div>
                            @endif
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('profile/'.Auth::user()->name, 'profile/'.Auth::user()->name . '/edit') ? 'active' : null }}" href="{{ url('/profile/'.Auth::user()->name) }}">
                                @lang('titles.profile')
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('about.index', 'about.index' . Auth::user()->id, 'about.index' . Auth::user()->id . 'about.index') ? 'active' : null }}" href="{{ url('about/') }}">
                                @lang('titles.about')
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</div>
</nav>
