<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\DocsourceRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class DocsourceCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class DocsourceCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Docsource::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/docsource');
        CRUD::setEntityNameStrings('Документ', 'Документы');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('documentName')->label('Наименование документа');
        CRUD::column('documentSource')->label('Путь до изображения')->key('1');
        $this->crud->addColumn([
            'name'      => 'documentSource', // name of relationship method in the model
            'type'      => 'view',
            'label'     => 'Изображение',
            'view'      => 'partials/docImage',
            'key'       => 2
        ]);
        CRUD::column('documentType')->label('Тип документа');
        CRUD::addColumn([
            'name'      => 'sections', // name of relationship method in the model
            'type'      => 'relationship',
            'label'     => 'Секция', // Table column heading
            'attribute' => 'sectionTitle', // foreign key attribute that is shown to user
        ]);
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
        CRUD::setValidation(DocsourceRequest::class);

        CRUD::field('documentName')->label('Наименование документа');
        CRUD::addField([   // Upload
            'name'      => 'documentSource',
            'label'     => 'Изображение',
            'type'      => 'upload',
            'upload'    => true
        ]);
        CRUD::addFields([[
            'name'            => 'documentType',
            'type'            => 'select_from_array',
            'label'           => 'Тип документа',
            'options' => ['JPG' => 'JPG','PDF' => 'PDF','IMG' => 'IMG','DOC' => 'DOC',
                'DOCX' => 'DOCX','XLS' => 'XLS','XLSX' => 'XLSX','PPT' => 'PPT'
            ],
            'allows_null' => false,
            'default'     => 'JPG',
        ]]);
        CRUD::addFields([
            [
                'name' => 'sections', //столбец базы данных для внешнего ключа
                'type'  => 'select2_multiple',
                'label' => 'Секции',
                //'entity' => 'student', //метод, определяющий связь в модели
                //'model' => "App\Models\Student", //модель внешнего ключа
                'attribute' => 'sectionTitle', //свойство модели, отображаемое пользователю
            ],
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
