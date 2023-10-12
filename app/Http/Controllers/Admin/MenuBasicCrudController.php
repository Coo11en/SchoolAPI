<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\MenuBasicRequest;
use App\Models\MenuItem;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class MenuBasicCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class MenuBasicCrudController extends CrudController
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
        CRUD::setModel(\App\Models\MenuBasic::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/menu-basic');
        CRUD::setEntityNameStrings('Меню', 'Список всех меню');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('date')->label('Дата реализации меню');
        //CRUD::column('menu_title')->label('Наменование заголовка на сайте');
        $this->crud->addColumn([
            'name'      => 'menu_item', // name of relationship method in the model
            'type'      => 'relationship',
            'label'     => 'Состав блюд на прием пищи', // Table column heading
            //'suffix'    => ' /br', // to show "123 tags" instead of "123"
            // OPTIONAL
            // 'entity'    => 'tags', // the method that defines the relationship in your Model
            'attribute' => 'name_dish', // foreign key attribute that is shown to user
            'model'     => MenuItem::class, // foreign key model
        ]);
        CRUD::column('name_menu')->label('Вид приема пищи');
        CRUD::column('price')->label('Стоимость приема пищи');

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

        //CRUD::field('date');
//        CRUD::field('title');
        CRUD::field('name_menu')->label('Вид приема пищи');
//        $this->crud->addFields([
//            [
//                'name'  => 'name_menu',
//                'label' => 'Вид приема пищи',
//                'type'  => 'enum',
//                // optional, specify the enum options with custom display values
//                'options' => [
//                    'BREAKFAST' => 'Завтрак',
//                    'DINNER' => 'Обед'
//                ]
//            ]
//            ]);
        $this->crud->addFields([
            [
                'label' => "Дата",
                'type' => 'date',
                'name' => 'date',
            ],
            [
                'label' => "Блюда меню",
                'type' => 'select2_multiple',
                'name' => 'menu_item',
                'entity' => 'menu_item',
                'attribute' => 'name_dish',
                //'attributes' => 'dish_output',
                'pivot' => true,
                'model' => 'App\Models\Menu_item',
            ],
        ]);
        CRUD::field('menu_title')->label('Наименование меню')->default('Меню ежедневного горячего питания');
        CRUD::field('price')->label('Стоимость одного блюда');

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
