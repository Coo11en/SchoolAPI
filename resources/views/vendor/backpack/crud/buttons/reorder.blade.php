@if ($crud->get('reorder.enabled') && $crud->hasAccess('reorder'))
  <a href="{{ url($crud->route.'/reorder') }}" title="Изменить порядок" class="btn btn-outline-primary" data-style="zoom-in"><span class="ladda-label"><i class="la la-sort-amount-asc"></i> Изменить порядок</span></a>
@endif
