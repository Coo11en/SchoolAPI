<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ParentsRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class ParentsCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ParentsCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Parents::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/parents');
        CRUD::setEntityNameStrings('Родителя', 'Родители');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('user_id');
        CRUD::column('full_name')->label('Родитель');
        CRUD::addColumn([
            'name'      => 'student',
            'type'      => 'relationship',
            'label'     => 'Ученики',
            //'entity' => 'parent', //метод, определяющий связь в модели
            //'model' => Student::class, //модель внешнего ключа
            'attribute' => 'full_name', //свойство модели, отображаемое пользователю
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
        CRUD::setValidation(ParentsRequest::class);

        CRUD::field('user_id');
        CRUD::field('surname')->label('Фамилия');
        CRUD::field('name')->label('Имя');
        CRUD::field('patronymic')->label('Отчество');
        CRUD::addFields([[
            'name'      => 'student', //столбец базы данных для внешнего ключа
            'type'      => 'select2_multiple',
            'label'     => 'Ученики',
            //'entity'    => 'student', //метод, определяющий связь в модели
            //'model'     => "App\Models\Student", //модель внешнего ключа
            'attribute' => 'full_name', //свойство модели, отображаемое пользователю
            'pivot'     => true,
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
