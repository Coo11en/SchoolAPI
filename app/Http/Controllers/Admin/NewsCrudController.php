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
        CRUD::column('title');
        CRUD::column('author');
        CRUD::column('description');
        CRUD::column('text');
        CRUD::column('news_category_id');
        CRUD::column('album_id');
        CRUD::column('status');
        CRUD::column('pub_approve');
        CRUD::column('video');

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

        CRUD::field('title');
        CRUD::field('author');
        $this->crud->addFields([
            [   // Textarea
                'name'  => 'description',
                'label' => 'Описание',
                'type'  => 'textarea'
            ],
            [   // WYSIWYG Editor
                'name'  => 'text',
                'label' => 'Текст',
                'type'  => 'summernote',
                'options' => [
                    'toolbar' => [
                        ['font', ['bold', 'underline', 'italic']]
                    ]
                ],
                'wrapper' => ['class' => 'form-group col-md-12'],
//                'options' => [
//                    'toolbar' => [
//                        // [groupName, [list of button]]
//                        ['style', ['bold', 'italic', 'underline', 'clear']],
//                        ['font', ['strikethrough', 'superscript', 'subscript']],
//                        ['fontsize', ['fontsize']],
//                        ['color', ['color']],
//                        ['para', ['ul', 'ol', 'paragraph']],
//                        ['height', ['height']]
//                    ]
//                ],
            ],
        ]);
        CRUD::field('news_category_id');
        CRUD::field('album_id');
        CRUD::field('status');
        CRUD::field('pub_approve');
        CRUD::field('video');


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
