<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\AlbumsRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
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
        CRUD::column('mainImg')->label('Главное фото');
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
        CRUD::field('mainImg')->label('Главное фото')->subfields([
            ['name' => 'main_img', 'type' => 'checkbox'],
//            ['name' => 'some_other_field']
        ]);
        CRUD::field('relationship')->label('Зависимый');
        CRUD::column('status')->label('Статус');


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
