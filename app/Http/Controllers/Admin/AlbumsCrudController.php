<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\AlbumsRequest;
use App\Models\Album;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Lagoon\Reef\app\Helpers\PermissionHelper;

/**
 * Class AlbumsCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class AlbumsCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Album::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/albums');
        CRUD::setEntityNameStrings('альбом', 'альбомы');
        $this->crud = PermissionHelper::applyPermissions($this->crud, 'albums');

    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('name')->label('Название');
        CRUD::column('description')->label('Описание');
        CRUD::column('nameEng')->label('Путь на сайте');
        $this->crud->addColumn([
            'label'     => "Главная фотография",
            'type'      => 'select',
            'name'      => 'mainImg', // the method that defines the relationship in your Model
            'entity'    => 'mainImg', // the method that defines the relationship in your Model
            'model'     => "App\Models\Photo", // foreign key model
            'attribute' => 'img',
        ]);
        CRUD::column('relationship')->label('Зависимый');
        CRUD::column('status')->label('Статус');
        CRUD::column('created_at')->label('Дата создания');
        CRUD::column('updated_at')->label('Дата обновления');

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
        CRUD::setValidation(AlbumsRequest::class);

        CRUD::field('name')->label('Название');
        CRUD::field('description')->label('Описание');
        CRUD::field('nameEng')->label('Путь на сайте');
//        CRUD::field('mainImg')->on('saving', function ($item) {Storage::disk('public')->put('item.json',json_encode($item));});
        $this->crud->addField([
            'label' => 'Главная фотография',
            'type' => 'select2_multiple',
            'name' => 'mainImg', // the relationship name in your Model
            'entity' => 'mainImg', // the relationship name in your Model
            'attribute' => 'img', // attribute on Article that is shown to admin
            'pivot' => true, // on create&update, do you need to add/delete pivot table entries?
            'pivotFields' => ['mainImg'=>'main_img'],
            'events' => [
                'saving' => function ($entry) {
                    Storage::disk('public')->put('item.json',json_encode($entry->pivot));
                },
            ]
        ]);
//        $this->crud->addField([
//            'label' => 'Flag',
//            'type' => 'pivot',
//            'name' => 'mainImg', // the relationship name in your Model
//            'entity' => 'mainImg', // the relationship name in your Model
//            'attribute' => 'pivot', // attribute on Article that is shown to admin
//            'pivot' => true, // on create&update, do you need to add/delete pivot table entries?
//            'pivotFields' => ['mainImg'=>'main_img'],
//        ]);

        CRUD::field('relationship')->label('Зависимый');

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
