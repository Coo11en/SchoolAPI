@extends('errors.layout')

@php
    $error_number = 500;
@endphp

@section('title')
    Внутренняя ошибка сервера
@endsection

@if( env('APP_ENV') == 'local' )
    @section('description')
        @php
            $default_error_message = '<div class="btn-group" role="group"><a href="javascript:history.back()" class="btn btn-primary"><i class="la la-arrow-left"></i>Вернуться назад</a><a href="'. url('') .'" class="btn btn-primary"><i class="la la-home"></i>На главную</a></div>';
        @endphp
        {!! isset($exception)? ($exception->getMessage()?e($exception->getMessage()):$default_error_message): $default_error_message !!}
    @endsection
@endif
