<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ChapterRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class ChapterCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ChapterCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Chapter::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/chapter');
        CRUD::setEntityNameStrings('главу', 'главы');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('slug')->label('Путь на сайте');
        CRUD::column('chapterTitle')->label('Глава');
        CRUD::addColumn([
            'name'      => 'section', // name of relationship method in the model
            'type'      => 'relationship',
            'label'     => 'Секции', // Table column heading
            'attribute' => 'sectionTitle', // foreign key attribute that is shown to user
        ]);
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
        CRUD::setValidation(ChapterRequest::class);
        CRUD::field('slug')->label('Путь на сайте');
        CRUD::field('chapterTitle')->label('Глава');
        CRUD::addFields([[
            'name' => 'section', //столбец базы данных для внешнего ключа
            'type'  => 'select2_multiple',
            'label' => 'Секции',
            //'entity' => 'student', //метод, определяющий связь в модели
            //'model' => "App\Models\Student", //модель внешнего ключа
            'attribute' => 'sectionTitle', //свойство модели, отображаемое пользователю
        ]]);
        CRUD::addFields([[
            'name'            => 'status',
            'type'            => 'select_from_array',
            'label'           => 'Статус',
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
