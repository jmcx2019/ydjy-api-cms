<?php

namespace App\Admin\Controllers;

use App\Teacher;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class TeacherController extends Controller
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

            $content->header('师资团队');
            $content->description('师资团队展示');

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

            $content->header('修改资料');
            $content->description('修改教师资料');

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

            $content->header('新增资料');
            $content->description('新增教师资料');

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
        return Admin::grid(Teacher::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->column('name', '姓名');
            $grid->column('avatar', '头像')->image('', 100, 100);
            $grid->column('position', '职位');
            $grid->column('title', '名号');
            $grid->column('description', '描述');
            $grid->column('view_level', '显示级别')->editable('select', ['0' => '最后显示', '1' => '第一显示', '2' => '第二显示', '3' => '第三显示']);
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
        return Admin::form(Teacher::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->text('name', '姓名');
            $form->image('avatar', '头像')->uniqueName()->move('images/teachers');
            $form->text('position', '职位');
            $form->text('title', '名号');
            $form->textarea('description', '描述');
            $form->select('view_level', '显示级别')->options([
                '0' => '最后显示（在师资团队中需要点击和滑动才能展示）',
                '1' => '第一显示（在师资团队展示中，默认居中最大显示，仅有1个）',
                '2' => '第二显示（在师资团队展示中，默认居左和右各一个，仅有2个）',
                '3' => '第三显示（在师资团队展示中，默认在最左和最右各一个，仅有2个）'
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
