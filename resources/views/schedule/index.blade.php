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
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        @forelse ($schedule as $key => $scheduleItem)
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="heading{!! $key !!}">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{!! $key !!}" aria-expanded="true" aria-controls="collapse{!! $key !!}">
                            {{ $key }}
                        </button>
                    </h2>
                    <div id="collapse{!! $key !!}" class="accordion-collapse collapse" aria-labelledby="heading{!! $key !!}" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Accordion Item #2
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Accordion Item #3
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                        </div>
                    </div>
                </div>
            </div>


{{--        <div class="col">--}}
{{--            <div class="card shadow-sm">--}}
{{--                @if($newsItem->image == null)--}}
{{--                    <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>--}}
{{--                @elseif(current(explode('/', $newsItem->image)) === 'https:')--}}
{{--                    <img src="{{ $newsItem->image }}"/>--}}
{{--                @else--}}
{{--                    <img src="{{ Storage::disk('public')->url($newsItem->image) }}"/>--}}
{{--                @endif--}}
{{--                <div class="card-body">--}}
{{--                    <p>Рубрика: {{$newsItem->categories->map(fn($item) => $item->title)->implode('|')}}</p>--}}
{{--                    <p><strong><a href="{{ route('news.show', ['news' => $newsItem->id]) }}"><h2>{{$newsItem->title}}</h2></a></strong></p>--}}
{{--                    <p class="card-text">{!! $newsItem->description !!}</p>--}}
{{--                    <div class="d-flex justify-content-between align-items-center">--}}
{{--                        <div class="btn-group">--}}
{{--                           <a href="{{ route('news.show', ['news' => $newsItem->id]) }}" type="button" class="btn btn-sm btn-outline-secondary">Подробнее</a>--}}
{{--                        </div>--}}
{{--                        <small class="text-muted">{{$newsItem->author}} ({{date('d.m.Y H:i:s', strtotime($newsItem->pubDate))}})</small>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
        @empty
            <p>Нет новостей</p>
        @endforelse
    </div>
</div>
@endsection







