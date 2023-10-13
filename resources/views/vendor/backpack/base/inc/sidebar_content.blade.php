{{-- This file is used to store sidebar items, inside the Backpack admin panel --}}
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="la la-home nav-icon"></i> {{ trans('backpack::base.dashboard') }}</a></li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-group"></i> ACL</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('/system/users') }}"><i class="nav-icon la la-user"></i> <span>Пользователи</span></a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('/system/roles') }}"><i class="nav-icon la la-group"></i> <span>Роли</span></a></li>
{{--        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('/system/rights') }}"><i class="nav-icon la la-user"></i> <span>Разрешения</span></a></li>--}}
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
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('news-category') }}"><i class="nav-icon la la-question"></i> News categories</a></li>
@endif
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('teacher') }}"><i class="nav-icon la la-question"></i> Teachers</a></li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-archive"></i> Управление фотографиями</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('photo') }}"><i class="nav-icon la la-photo"></i> Фото</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('albums') }}"><i class="nav-icon la la-copy"></i> Альбомы</a></li>
    </ul>
</li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-archive"></i> Управление меню столовой</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('menu-item') }}"><i class="nav-icon la la-bars"></i> Элементы меню</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('menu-basic') }}"><i class="nav-icon la la-book"></i> Меню</a></li>
    </ul>
</li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-weixin"></i> Управление вопросами организации</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('appeal') }}"><i class="nav-icon la la-question"></i> Вопросы</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('appeal-category') }}"><i class="nav-icon la la la-list-ul"></i> Категории вопросов</a></li>
    </ul>
</li>
<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-mortar-board"></i> Управление расписанием</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('call-schedule') }}"><i class="nav-icon la la-bell-o"></i> Расписание звонков</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('subject') }}"><i class="nav-icon la la-flask"></i> Предметы</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('day') }}"><i class="nav-icon la la-calendar-o"></i> Дни недели</a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('schedule') }}"><i class="nav-icon la la-list-ol"></i> Расписание уроков</a></li>
    </ul>
</li>
@endif
