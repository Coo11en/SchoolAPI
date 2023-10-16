<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\AppealRequest;
use App\Models\AppealCategory;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class AppealCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class AppealCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Appeal::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/appeal');
        CRUD::setEntityNameStrings('Вопрос', 'Вопросы');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('name')->label('Имя');
        CRUD::column('email')->label('E-mail');
        CRUD::column('question')->label('Вопрос');
        //CRUD::column('status')->label('Статус вопроса');
        $this->crud->addColumn([
            'name'  => 'status',
            'label' => 'Статус вопроса',
            'type'  => 'boolean',
            'options' => [0 => 'Неотработан', 1 => 'Отработан']
        ]);
        CRUD::column('response')->label('Ответ');
        CRUD::column('category_id')->label('Категория вопроса');
        //CRUD::column('top_questions')->label('Топ вопросов');
        $this->crud->addColumn([
                'name'  => 'top_questions',
                'label' => 'Топ вопросов по питанию',
                'type'  => 'boolean',
                'options' => [0 => 'Нет', 1 => 'Да']
        ]);
        CRUD::column('date_completion')->label('Дата ответа');
        CRUD::column('updated_at')->label('Дата последнего обновление блюда');

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
        CRUD::setValidation([
            // 'name' => 'required|min:2',
        ]);
        CRUD::field('name')->label('Имя')->size(3);
        CRUD::field('email')->label('E-mail')->size(3);
        CRUD::field('question')->label('Вопрос');
        $this->crud->addFields([
            [
                'label'     => "Категория вопроса",
                'type'      => 'select',
                'name'      => 'category_id', // the method that defines the relationship in your Model
                'entity'    => 'appealsCategories', // the method that defines the relationship in your Model
                'model'     => "App\Models\AppealCategory", // foreign key model
                'attribute' => 'name',
            ],
        ]);
        CRUD::field('response')->label('Ответ')->type('textarea');
        CRUD::field('status')->label('Статус вопроса')->size(3);
        CRUD::field('top_questions')->label('Поставить в топ вопросов по питанию')->size(3);
        CRUD::field('date_completion')->label('Дата ответа');

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
