<?php

namespace App\Admin\Controllers;

use App\ClassSchedule;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class ClassController extends Controller
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

            $content->header('培训课程');
            $content->description('培训课程表');

            $content->body($this->grid());
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

            $content->header('修改课程');
            $content->description('修改培训课程表');

            $content->body($this->form()->edit($id));
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

            $content->header('新增课程');
            $content->description('新增课程资料');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(ClassSchedule::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->column('name', '课程名称');
            $grid->column('type', '课程分类')->editable('select', ['0' => '美术', '1' => '传媒']);
            $grid->column('description', '针对学员类型');
            $grid->column('content', '课程内容');
            $grid->column('semester', '课时（月）');
            $grid->column('fee', '价格（元）');
            $grid->column('homepage_view', '首页是否显示')->editable('select', ['0' => '否', '1' => '是']);
            $grid->column('status', '状态')->editable('select', [ '启用' => '启用', '停用' => '停用']);

            $grid->created_at('创建时间');
            $grid->updated_at('最后更新');

            $grid->actions(function ($actions) {
                $actions->disableDelete();
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(ClassSchedule::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->text('name', '课程名称');
            $form->select('type', '课程分类')->options([
                '0' => '美术',
                '1' => '传媒'
            ])->default('0');
            $form->textarea('description', '针对学员类型');
            $form->textarea('content', '课程内容');
            $form->text('semester', '课时（月）');
            $form->text('fee', '价格（元）');
            $form->select('homepage_view', '首页是否显示')->options([
                '0' => '否',
                '1' => '是'
            ])->default('0');
            $form->select('status', '状态')->options([
                '启用' => '启用',
                '停用' => '停用'
            ])->default('启用');

            $form->display('created_at', '创建时间');
            $form->display('updated_at', '更新时间');
        });
    }
}
