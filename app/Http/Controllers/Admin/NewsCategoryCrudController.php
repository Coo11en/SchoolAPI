<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\NewsCategoryRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class NewsCategoryCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class NewsCategoryCrudController extends CrudController
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
        CRUD::setModel(\App\Models\NewsCategory::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/news-category');
        CRUD::setEntityNameStrings('', 'Категории');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('created_at')->label('Создана');
        CRUD::column('description')->label('Описание');
//        CRUD::column('image')->label('Изображение');
        $this->crud->addColumn([
            'name'      => 'image', // name of relationship method in the model
            'type'      => 'image',
            'label'     => 'Фото', // Table column heading
            'disk' => 'public',
            'height' => '100px'
        ]);
        CRUD::column('name')->label('Название');
        CRUD::column('updated_at')->label('Обновлена');

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
        CRUD::setValidation(NewsCategoryRequest::class);

        CRUD::field('description')->label('Описание');
        $this->crud->addField([
            'name'      => 'image',
            'label'     => 'Фото',
            'type'      => 'image',
            'crop'    => true,
            'aspect_ratio' => 1,
            'disk' => 'public',
        ]);
        CRUD::field('name')->label('Название');

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
