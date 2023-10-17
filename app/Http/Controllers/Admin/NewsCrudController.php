<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\NewsRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use Lagoon\Reef\app\Helpers\PermissionHelper;

/**
 * Class NewsCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class NewsCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     *
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\News::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/news');
        CRUD::setEntityNameStrings('news', 'news');

        $this->crud = PermissionHelper::applyPermissions($this->crud, 'news');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('title')->label('Заголовок');
        CRUD::column('author')->label('Автор');
        CRUD::column('description')->label('Описание');
        CRUD::column('text')->label('Текст');
        CRUD::column('news_category_id')->label('Категория');
        CRUD::column('album_id')->label('Альбом');
        CRUD::column('status')->wrapper([
            'class' => function ($crud, $column, $entry) {
            return match ($entry->status) {
                'active' => 'badge bg-success',
                'draft' => 'badge bg-warning',
                'blocked' => 'badge bg-danger',
                };
            },
        ])->label('Статус');
        CRUD::column('pub_approve')->label('Дата публикации');
        CRUD::column('video')->label('Видео');

        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']);
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(NewsRequest::class);

        CRUD::field('title')->label('Заголовок');
        CRUD::field('author')->label('Автор');
        $this->crud->addFields([
            [   // Textarea
                'name'  => 'description',
                'label' => 'Описание',
                'type'  => 'textarea'
            ],
            [   // WYSIWYG Editor
                'name'  => 'text',
                'label' => 'Текст',
                'type'  => 'wysiwyg',
                'wrapper' => ['class' => 'form-group col-md-12'],
            ],
        ]);
        CRUD::field('news_category_id')->label('Категория новости');
        CRUD::field('album_id')->label('Альбом');
        CRUD::field('source')->type('json')->label('Источники новостей');
//        CRUD::field('status');
        $this->crud->addField([
        'name'  => 'status',
        'label' => 'Статус',
        'type' => 'select_from_array',
        'options'     => ['draft' => 'Подготовка', 'active' => 'Опубликованно', 'blocked' => 'Заблокировано'],
        'allows_null' => false,
        'default'     => 'one',
    ]);
        CRUD::field('pub_approve')->label('Дата новости');
        CRUD::field('video')->label('Видео');


        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number']));
         */
    }

    /**
     * Define what happens when the Update operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
}
