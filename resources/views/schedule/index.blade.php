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

    <div class="accordion" id="accordionExample">
        @forelse ($schedule as $key => $scheduleItem)
        <div class="accordion-item">
            <h2 class="accordion-header" id="heading{!! $key !!}">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{!! $key !!}" aria-expanded="false" aria-controls="collapse{!! $key !!}">
                    {{ $key }}
                </button>
            </h2>
            <div id="collapse{!! $key !!}" class="accordion-collapse collapse" aria-labelledby="heading{!! $key !!}" data-bs-parent="#accordionExample">
                <div class="accordion-body">
{{--                    <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.--}}
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <th>Понедельник</th>
                                <th>Вторник</th>
                                <th>Среда</th>
                                <th>Четверг</th>
                                <th>Пятница</th>
                            </tr>
                            @for($lesson = 0; $lesson<6;$lesson++)
                                <tr>
                                    @if(key($scheduleItem['monday']))
                                        <td>{{key($scheduleItem['monday'])}}-{{ $scheduleItem['monday'][key($scheduleItem['monday'])]}} </td>
                                        @php(next($scheduleItem['monday']))
                                    @else
                                        <td></td>
                                    @endif
                                    @if(key($scheduleItem['tuesday']))
                                         <td>{{key($scheduleItem['tuesday'])}}-{{ $scheduleItem['tuesday'][key($scheduleItem['tuesday'])]}} </td>
                                            @php(next($scheduleItem['tuesday']))
                                    @else
                                         <td></td>
                                    @endif
                                    @if(key($scheduleItem['wednesday']))
                                        <td>{{key($scheduleItem['wednesday'])}}-{{ $scheduleItem['wednesday'][key($scheduleItem['wednesday'])]}} </td>
                                            @php(next($scheduleItem['wednesday']))
                                    @else
                                         <td></td>
                                    @endif
                                    @if(key($scheduleItem['thursday']))
                                        <td>{{key($scheduleItem['thursday'])}}-{{ $scheduleItem['thursday'][key($scheduleItem['thursday'])]}} </td>
                                            @php(next($scheduleItem['thursday']))
                                    @else
                                        <td></td>
                                    @endif
                                    @if(key($scheduleItem['friday']))
                                        <td>{{key($scheduleItem['friday'])}}-{{ $scheduleItem['friday'][key($scheduleItem['friday'])]}} </td>
                                            @php(next($scheduleItem['friday']))
                                    @else
                                        <td></td>
                                    @endif
                                </tr>

                            @endfor

                        </table>
{{--                        {{ $newsList->links() }}--}}
                    </div>

                </div>
            </div>
        </div>
        @empty
            <p>Нет новостей</p>
        @endforelse
    </div>

</div>
@endsection







