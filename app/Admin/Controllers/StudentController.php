<?php

namespace App\Admin\Controllers;

use App\Admin\Extensions\Tools\GridView;
use App\Student;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Illuminate\Support\Facades\Request;

class StudentController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('学员风采');

            $content->body($this->grid());
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('新增学员');
            $content->description('上传学员照片');

            $content->body($this->form());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('修改资料');
            $content->description('修改资料');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Student::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->text('caption', '描述');
            $form->image('image', '照片')->uniqueName()->move('images/students');
            $form->select('status', '状态')->options([
                '启用' => '启用',
                '停用' => '停用'
            ])->default('启用');

            $form->display('created_at', '创建时间');
            $form->display('updated_at', '更新时间');
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Student::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->caption()->limit(20);
            $grid->image()->image();
            $grid->column('status', '状态')->editable('select', ['启用' => '启用', '停用' => '停用']);

            $grid->created_at('创建时间');
            $grid->updated_at('最后更新');

            $grid->tools(function ($tools) {
                $tools->append(new GridView());
            });
            if (Request::get('view') !== 'table') {
                $grid->setView('admin.grid.card');
            }
        });
    }
}
