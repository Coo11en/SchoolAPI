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
        CRUD::setEntityNameStrings('album', 'albums');
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
        CRUD::column('created_at')->label('Когда создан');
        CRUD::column('description')->label('Описание');
        CRUD::column('name')->label('Название');
        CRUD::column('nameEng')->label('Название на английском');
        CRUD::column('relationship')->label('Взаимосвзяь');
        CRUD::column('status')->label('Статус');
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

        CRUD::field('description')->label('Описание');
        CRUD::field('name')->label('Название');
        CRUD::field('nameEng')->label('Название на английском');
        CRUD::field('relationship')->label('Взаимосвязь');
        CRUD::field('status')->label('Статус');

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
