@extends('layouts.main')
@section('title') Расписание @parent @stop
@section('content')
<div class="container">
{{--    <section class="py-0 text-center container">--}}
{{--        <div class="row py-lg-5">--}}
{{--            <div class="col-lg-6 col-md-8 mx-auto">--}}
{{--                @if($categories instanceof \Illuminate\Support\Collection)--}}
{{--                    <h1 class="fw-light">Все расписание</h1>--}}
{{--                @else--}}
{{--                    <h1 class="fw-light">Новости: {{ $categories->title }}</h1>--}}
{{--                @endif--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </section>--}}
{{--    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">--}}

    <form>
        <fieldset>
            <legend>Редактирование расписания</legend>
            <select class="form-select form-select-lg mb-3" aria-label="Large select example">
                <option selected>Выберите класс</option>
                <option value="1">1 Класс</option>
                <option value="2">2 Класс</option>
                <option value="3">3 Класс</option>
                <option value="4">4 Класс</option>
                <option value="5">5 Класс</option>
                <option value="6">6 Класс</option>
                <option value="7">7 Класс</option>
                <option value="8">8 Класс</option>
                <option value="9">9 Класс</option>
                <option value="10">10 Класс</option>
                <option value="11">11 Класс</option>
            </select>

            <table class="table table-bordered">
                <tr>
                    <th colspan="2" style="text-align: center; width: 20%;">Понедельник</th>
                    <th colspan="2" style="text-align: center; width: 20%;">Вторник</th>
                    <th colspan="2" style="text-align: center; width: 20%;">Среда</th>
                    <th colspan="2" style="text-align: center; width: 20%;">Четверг</th>
                    <th colspan="2" style="text-align: center; width: 20%;">Пятница</th>
                </tr>
                @for($lesson = 0; $lesson<6; $lesson++)
                    <tr>
{{--                        @if($schedule['class_1']['monday'])--}}
                            <td>{{ $lesson + 1 }}</td>
                            <td>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="{{ $schedule['сlass_1']['monday']['lesson_1'] }} ">
                            </td>
{{--                            @php(next($schedule['class_1']['monday']))--}}
{{--                        @else--}}
{{--                            <td>{{ $lesson + 1 }}</td><td></td>--}}
{{--                        @endif--}}
{{--                        @if(key($schedule['class_1']['tuesday']))--}}
                            <td>{{ $lesson + 1 }}</td>
                            <td>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="{{ $schedule['сlass_1']['tuesday']['lesson_1'] }} ">
                            </td>
{{--                            @php(next($schedule['class_1']['tuesday']))--}}
{{--                        @else--}}
{{--                            <td>{{ $lesson + 1 }}</td><td></td>--}}
{{--                        @endif--}}
{{--                        @if(key($schedule['class_1']['wednesday']))--}}
                            <td>{{ $lesson + 1 }}</td>
                        <td>
                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="{{ $schedule['сlass_1']['wednesday']['lesson_1'] }} ">
                        </td>
{{--                            @php(next($schedule['class_1']['wednesday']))--}}
{{--                        @else--}}
{{--                            <td>{{ $lesson + 1 }}</td><td></td>--}}
{{--                        @endif--}}
{{--                        @if(key($schedule['class_1']['thursday']))--}}
                            <td>{{ $lesson + 1 }}</td>
                        <td>
                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="{{ $schedule['сlass_1']['thursday']['lesson_1'] }} ">
                        </td>
{{--                            @php(next($schedule['class_1']['thursday']))--}}
{{--                        @else--}}
{{--                            <td>{{ $lesson + 1 }}</td><td></td>--}}
{{--                        @endif--}}
{{--                        @if(key($schedule['class_1']['friday']))--}}
                            <td>{{ $lesson + 1 }}</td>
                        <td>
                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="{{ $schedule['сlass_1']['friday']['lesson_1'] }} ">
                        </td>
{{--                            @php(next($schedule['class_1']['friday']))--}}
{{--                        @else--}}
{{--                            <td>{{ $lesson + 1 }}</td><td></td>--}}
{{--                        @endif--}}
                    </tr>

                @endfor

            </table>
            <button type="button" class="btn btn-primary">Обновить расписание</button>
        </fieldset>
    </form>

    <form style="margin-top: 100px">
        <fieldset>
            <legend>Добавление новости</legend>
            <input type="text" class="form-control" placeholder="Заголовок" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="margin: 10px 0; ">
            <input type="text" class="form-control" placeholder="Текст новости" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="margin: 10px 0; ">
                <input type="file" class="form-control" placeholder="Расположение изображения" aria-label="Recipient's username" aria-describedby="button-addon2" style="margin: 10px 0; ">
            <button type="button" class="btn btn-primary" style="margin: 10px 0; ">Добавить новость</button>
        </fieldset>
    </form>

</div>
@endsection







