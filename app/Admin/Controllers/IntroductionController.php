<?php

namespace App\Admin\Controllers;

use App\Introduction;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class IntroductionController extends Controller
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

            $content->header('艺动简介');
            $content->description('展示官网内容：关于艺动 -> 艺动简介');

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

            $content->header('修改简介');
            $content->description('修改展示官网内容：关于艺动 -> 艺动简介，其中状态：停用的将不会再显示，启用的会显示最新一个');

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

            $content->header('新建简介');
            $content->description('新建展示官网内容：关于艺动 -> 艺动简介，其中状态：停用的将不会再显示，启用的会显示最新一个');

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
        return Admin::grid(Introduction::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->column('summary', '摘要');
            $grid->column('content', '内容');
            $grid->column('slogan', 'Slogan');
            $grid->column('status', '状态');

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
        return Admin::form(Introduction::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->textarea('summary', '摘要');
            $form->editor('content', '内容');
            $form->textarea('slogan', 'Slogan');
            $form->select('status', '状态')->options([
                '启用' => '启用',
                '停用' => '停用'
            ])->default('启用');

            $form->display('created_at', '创建时间');
            $form->display('updated_at', '更新时间');
        });
    }
}
