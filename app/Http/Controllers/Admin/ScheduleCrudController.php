<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ScheduleRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class ScheduleCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ScheduleCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Schedule::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/schedule');
        CRUD::setEntityNameStrings('schedule', 'schedules');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {

        $this->crud->with(['classroom']);
//        CRUD::column('classroom_id');
        $this->crud->addColumn(
                [
                    'label' => 'Класс',
                    'name' => 'classroom.name', // relation.column_name
                ]
        );
//        CRUD::addColumn(
//            [
//            'label' => "Класс",
//            'type' => 'relationship',
//            // метод, который определяет отношения в модели
//            'name' => 'classroom',
//            // метод, который определяет отношения в модели
//            'entity' => 'classroom',
//            // атрибут внешнего ключа, который отображается пользователю
//            'attribute' =>'name',
//        ]
//        );
        CRUD::column('week_day_name');
        CRUD::column('callSchedule_id');

        CRUD::addColumn([
            'label' => "Предмет",
            'type' => 'relationship',
            // метод, который определяет отношения в модели
            'name' => 'subject',
            // метод, который определяет отношения в модели
            'entity' => 'subject',
            // атрибут внешнего ключа, который отображается пользователю
            'attribute' => 'name_subject',
        ]);
        CRUD::addColumn([
            'label' => "Учитель",
            'type' => 'relationship',
            // метод, который определяет отношения в модели
            'name' => 'teacher',
            // метод, который определяет отношения в модели
            'entity' => 'teacher',
            // атрибут внешнего ключа, который отображается пользователю
            'attribute' =>'surname',
        ]);
//        CRUD::column('day_id');

        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']);
         */
//        if (! $this->crud->getRequest()->has('order')){
//            $this->crud->orderBy('day_id', 'asc');
//        }
    }

    /**
     * Define what happens when the Create operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation([
            // 'name' => 'required|min:2',
        ]);

        CRUD::field('subject_id');
        CRUD::field('teacher_id');
        CRUD::field('week_day_name');
        CRUD::field('classroom_id');
        CRUD::field('callSchedule_id');
        CRUD::field('day_id');

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
