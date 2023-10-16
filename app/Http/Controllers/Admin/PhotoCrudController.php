<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\PhotoRequest;
use App\Models\Album;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class PhotoCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class PhotoCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Photo::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/photo');
        CRUD::setEntityNameStrings('фотографию', 'фотографии');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {


        $this->crud->addColumn([
            'name'      => 'img', // name of relationship method in the model
            'type'      => 'image',
            'label'     => 'Фото', // Table column heading
            'disk' => 'public',
            'height' => '100px'
        ]);
        $this->crud->addColumn([
            'name'      => 'albums', // name of relationship method in the model
            'type'      => 'relationship',
            'label'     => 'Альбом', // Table column heading
            'attribute' => 'name', // foreign key attribute that is shown to user
            'model'     => Album::class, // foreign key model
            'key'       => 2
        ]);

        CRUD::column('created_at')->label('Дата создания');


        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']);
         */
    }

    protected function setupShowOperation()
    {

        $this->crud->addColumn([
            'name'      => 'img', // name of relationship method in the model
            'type'      => 'image',
            'label'     => 'Фото', // Table column heading
            'disk' => 'public',
            'height' => '100px'
        ]);
        $this->crud->addColumn([
            'name'      => 'albums', // name of relationship method in the model
            'type'      => 'relationship',
            'label'     => 'Альбом', // Table column heading
            'attribute' => 'name', // foreign key attribute that is shown to user
            'model'     => Album::class, // foreign key model
            'key'       => 2
        ]);

        CRUD::column('created_at')->label('Дата создания');


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
        CRUD::setValidation(PhotoRequest::class);

        $this->crud->addField([
            'name'      => 'img',
            'label'     => 'Фото',
            'type'      => 'image',
            'crop'    => true,
            'aspect_ratio' => 1,
            'disk' => 'public',
        ]);

        $this->crud->addField([
                'label' => 'Альбом',
                'type'  => 'select2_multiple',
                'name'  => 'albums',
                'entity' => 'albums',
                'attribute' => 'name',
                'pivot' => true,
        ]);

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
