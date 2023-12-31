@extends('layouts.main')
@section('title')Main @parent @stop
@section('content')
    <div class="container">
        <section class="py-5 text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-auto">
                    <h1 class="fw-light">Добро пожаловать на сайт Филипповской школы</h1>
                    <p class="lead text-body-secondary"><u>Наш девиз: "Ученье - свет! А неученых - тьма ..."</u></p>
                    <form method="POST" action="{{url('api/V0/avatar-update')}}" enctype="multipart/form-data">
                        @csrf
                        <input type="text" name="id" value="id">
                        <input type="file" name="image" id="image">
                        <input type="submit">
                    </form>
                </div>
            </div>
        </section>
    </div>
@endsection




