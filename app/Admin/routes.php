<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');

    $router->resource('intelligence', IntelligenceController::class);
    $router->resource('help-doc', HelpDocController::class);

    $router->resource('introduction', IntroductionController::class);
    $router->resource('teacher', TeacherController::class);
    $router->resource('student', StudentController::class);
    $router->resource('classroom', ClassroomController::class);
    $router->resource('class', ClassController::class);
});
