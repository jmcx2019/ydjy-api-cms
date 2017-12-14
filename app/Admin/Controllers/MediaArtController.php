<?php

namespace App\Admin\Controllers;

use App\MediaArt;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class MediaArtController extends Controller
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

            $content->header('艺术升学/留学游学');
            $content->description('传媒艺考、美术艺考、中考美术特长的项目简介、优势等信息。注意：该表格只有修改选项！');

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

            $content->header('修改信息');
            $content->description('');

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

            $content->header('新建信息');
            $content->description('');

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
        return Admin::grid(MediaArt::class, function (Grid $grid) {

            $grid->id('ID')->sortable();

            $grid->column('title', '标题');
            $grid->column('content', '内容');
//            $grid->column('status', '状态');

//            $grid->created_at('创建时间');
            $grid->updated_at('最后更新');

            $grid->disableCreation();
            $grid->actions(function ($actions) {
                $actions->disableDelete();
            });
            $grid->disableRowSelector();
            $grid->disableFilter();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(MediaArt::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->text('title', '标题');
            $form->editor('content', '内容');
            $form->select('status', '状态')->options([
                '启用' => '启用',
                '停用' => '停用'
            ])->default('启用');

            $form->display('created_at', '创建时间');
            $form->display('updated_at', '更新时间');
        });
    }
}
