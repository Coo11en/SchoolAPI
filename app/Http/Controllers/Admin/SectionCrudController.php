<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\SectionRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class SectionCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class SectionCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Section::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/section');
        CRUD::setEntityNameStrings('Секцию', 'Секции');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        //CRUD::column('chapter');
        CRUD::addColumn([
            'name'      => 'chapter',
            'type'      => 'relationship',
            'label'     => 'Глава',
            'attribute' => 'chapterTitle',
        ]);
        CRUD::column('sectionTitle')->label('Секция');
        CRUD::column('sectionText')->label('Содержание');
        CRUD::column('sequence')->label('Очередность');
        CRUD::column('status');

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
        CRUD::setValidation(SectionRequest::class);

        //CRUD::field('chapter');
        CRUD::addFields([[
            'name'      => 'chapter',
            'type'      => 'select2',
            'label'     => 'Глава',
            'entity'    => 'chapter',
            'attribute' => 'chapterTitle',
            'pivot'     => true,
        ]]);
        CRUD::field('sectionTitle')->label('Секция');

        //tinymce - самый простой  //wysiwyg - одинаковые - ckeditor
        CRUD::addField([
            'name'    => 'sectionText',
            'label'   => 'Содержание',
            'type'    => 'ckeditor',
            'options' => [
                'removeButtons' => 'Table',
            ]
        ]);
        CRUD::field('sequence')->label('Очередность');
        CRUD::addFields([[
            'name'        => 'status',
            'type'        => 'select_from_array',
            'label'       => 'Статус',
            'options'     => ['active' => 'active', 'draft' => 'draft'],
            'allows_null' => false,
            'default'     => 'draft',
        ]]);

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

