{{-- This file is used to store sidebar items, inside the Backpack admin panel --}}
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="la la-home nav-icon"></i> {{ trans('backpack::base.dashboard') }}</a></li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-group"></i> ACL</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('/system/users') }}"><i class="nav-icon la la-user"></i> <span>Пользователи</span></a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('/system/roles') }}"><i class="nav-icon la la-group"></i> <span>Роли</span></a></li>
    </ul>
</li>


@once
   @push('after_styles')
       <livewire:styles />
   @endpush
@endonce
@once
   @push('before_scripts')
       <livewire:scripts />
   @endpush
@endonce

@if(reef_can('news.list'))
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('news') }}"><i class="nav-icon la la-question"></i> News</a></li>

<li class="nav-item"><a class="nav-link" href="{{ backpack_url('albums') }}"><i class="nav-icon la la-question"></i> Albums</a></li>
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('news-category') }}"><i class="nav-icon la la-question"></i> News categories</a></li>
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('photo') }}"><i class="nav-icon la la-question"></i> Photos</a></li>
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('teacher') }}"><i class="nav-icon la la-question"></i> Teachers</a></li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-archive"></i> Управление меню столовой</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('menu-item') }}"><i class="nav-icon la la-bars"></i> Элементы меню</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('menu-basic') }}"><i class="nav-icon la la-book"></i> Меню</a></li>
    </ul>
</li>
@endif

<li class="nav-item"><a class="nav-link" href="{{ backpack_url('student') }}"><i class="nav-icon la la-question"></i> Students</a></li>
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('classroom') }}"><i class="nav-icon la la-question"></i> Classrooms</a></li>
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('cabinet') }}"><i class="nav-icon la la-question"></i> Cabinets</a></li>