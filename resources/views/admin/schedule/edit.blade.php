@extends('layouts.admin')
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

    <form method="POST" action="{{route('admin.schedule.update', ['schedule' => key($schedule)])}}" enctype="multipart/form-data">
        @csrf
        @method('put')
        <fieldset>
            <legend>Редактирование расписания {{key($schedule)}}</legend>
{{--            <select class="form-select form-select-lg mb-3" aria-label="Large select example"  id="classes" onchange="myFunction(this)">--}}
{{--                <option selected>Выберите класс</option>--}}
{{--                @foreach($classes as $key => $item)--}}

{{--                <option value="{{$key}}">{{$item}}</option>--}}
{{--                @endforeach--}}

{{--                <option value="2">2 Класс</option>--}}
{{--                <option value="3">3 Класс</option>--}}
{{--                <option value="4">4 Класс</option>--}}
{{--                <option value="5">5 Класс</option>--}}
{{--                <option value="6">6 Класс</option>--}}
{{--                <option value="7">7 Класс</option>--}}
{{--                <option value="8">8 Класс</option>--}}
{{--                <option value="9">9 Класс</option>--}}
{{--                <option value="10">10 Класс</option>--}}
{{--                <option value="11">11 Класс</option>--}}
{{--            </select>--}}
{{--<p id="demo"></p>--}}
            <table class="table table-bordered" id="table">
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
                                <input name="monday:lesson_{{$lesson+1}}" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                                    @if(key($schedule[key($schedule)]['monday']))
                                    value="{{ $schedule[key($schedule)]['monday'][key($schedule[key($schedule)]['monday'])] }} "
                                        @php(next($schedule[key($schedule)]['monday']))
                                    @else
                                       value=""
                                    @endif
                                >
                            </td>

                            <td>{{ $lesson + 1 }}</td>
                        <td>
                            <input name="tuesday:lesson_{{$lesson+1}}" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                                   @if(key($schedule[key($schedule)]['tuesday']))
                                   value="{{ $schedule[key($schedule)]['tuesday'][key($schedule[key($schedule)]['tuesday'])] }} "
                                   @php(next($schedule[key($schedule)]['tuesday']))
                                   @else
                                   value=""
                                @endif
                            >
                        </td>

                            <td>{{ $lesson + 1 }}</td>
                        <td>
                            <input name="wednesday:lesson_{{$lesson+1}}" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                                   @if(key($schedule[key($schedule)]['wednesday']))
                                   value="{{ $schedule[key($schedule)]['wednesday'][key($schedule[key($schedule)]['wednesday'])] }} "
                                   @php(next($schedule[key($schedule)]['wednesday']))
                                   @else
                                   value=""
                                @endif
                            >
                        </td>

                            <td>{{ $lesson + 1 }}</td>
                        <td>
                            <input name="thursday:lesson_{{$lesson+1}}" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                                   @if(key($schedule[key($schedule)]['thursday']))
                                   value="{{ $schedule[key($schedule)]['thursday'][key($schedule[key($schedule)]['thursday'])] }} "
                                   @php(next($schedule[key($schedule)]['thursday']))
                                   @else
                                   value=""
                                @endif
                            >
                        </td>

                            <td>{{ $lesson + 1 }}</td>
                        <td>
                            <input name="friday:lesson_{{$lesson+1}}" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                                   @if(key($schedule[key($schedule)]['friday']))
                                   value="{{ $schedule[key($schedule)]['friday'][key($schedule[key($schedule)]['friday'])] }} "
                                   @php(next($schedule[key($schedule)]['friday']))
                                   @else
                                   value=""
                                @endif
                            >
                        </td>

                    </tr>

                @endfor

            </table>

            <button type="submit" class="btn btn-primary">Обновить расписание</button>
        </fieldset>
    </form>

{{--    <form style="margin-top: 100px">--}}
{{--        <fieldset>--}}
{{--            <legend>Добавление новости</legend>--}}
{{--            <input type="text" class="form-control" placeholder="Заголовок" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="margin: 10px 0; ">--}}
{{--            <input type="text" class="form-control" placeholder="Текст новости" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="margin: 10px 0; ">--}}
{{--                <input type="file" class="form-control" placeholder="Расположение изображения" aria-label="Recipient's username" aria-describedby="button-addon2" style="margin: 10px 0; ">--}}
{{--            <button type="button" class="btn btn-primary" style="margin: 10px 0; ">Добавить новость</button>--}}
{{--        </fieldset>--}}
{{--    </form>--}}

</div>
@endsection






