<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\StudentRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class StudentCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class StudentCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Student::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/student');
        CRUD::setEntityNameStrings('Ученика', 'Ученики');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('user_id')->label('USER');
        CRUD::column('full_name')->label('Ученик');
        CRUD::column('classroom_id')->label('Класс');
        CRUD::addColumn([
            'name'      => 'parent',
            'type'      => 'relationship',
            'label'     => 'Родители',
            //'entity'    => 'parent', //метод, определяющий связь в модели
            //'model'     => Student::class, //модель внешнего ключа
            'attribute' => 'full_name', //свойство модели, отображаемое пользователю
            'pivot'     => true,
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
        CRUD::setValidation(StudentRequest::class);

        CRUD::field('user_id');
        CRUD::field('surname')->label('Фамилия');
        CRUD::field('name')->label('Имя');
        CRUD::field('patronymic')->label('Отчество');
        CRUD::field('classroom_id')->label('Класс');
        CRUD::addFields([[
            'name'      => 'parent',
            'type'      => 'select2_multiple',
            'label'     => 'Родители',
            //'entity'    => 'parent', //метод, определяющий связь в модели
            //'model'     => Parents::class, //модель внешнего ключа
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
