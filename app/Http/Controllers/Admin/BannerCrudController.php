<?php
declare(strict_types=1);
namespace App\Http\Controllers\Admin;

use App\Http\Requests\BannerRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class BannerCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class BannerCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Banner::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/banner');
        CRUD::setEntityNameStrings('баннер', 'баннеры');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::addColumn([
            'name'      => 'chapter',
            'type'      => 'relationship',
            'label'     => 'Путь на сайте',
            'attribute' => 'slug',
        ]);
        CRUD::column('bannerTitle')->label('Подпись баннера');
        CRUD::column('img')->label('Путь до баннера')->key('1');
        CRUD::addColumn([
            'name'      => 'img', // name of relationship method in the model
            'type'      => 'view',
            'label'     => 'Баннер',
            'view'      => 'partials/image',
            'key'       => 2
        ]);
        CRUD::column('ref')->label('Ссылка')->type('url');

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
        CRUD::setValidation(BannerRequest::class);

        CRUD::addFields([[
            'name'      => 'chapter',
            'type'      => 'select2',
            'label'     => 'Путь на сайте',
            'entity'    => 'chapter',
            'attribute' => 'slug',
            'pivot'     => true,
        ]]);
        CRUD::field('bannerTitle')->label('Подпись баннера');
        CRUD::addField([   // Upload
            'name'      => 'img',
            'label'     => 'Баннер',
            'type'      => 'upload',
            'upload'    => true
        ]);
        CRUD::field('ref')->label('Ссылка');
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
