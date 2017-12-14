<?php
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/**
 * Api Doc
 */
Route::get('/doc', '\App\Api\Controllers\ApiDoc@index');



$api = app('Dingo\Api\Routing\Router');
$api->version('v1', function ($api) {
    $api->group(['namespace' => 'App\Api\Controllers', 'middleware' => ['jwt.api.auth']], function ($api) {
        $api->get('intelligence', 'IntelligenceController@index');
        $api->get('help-doc', 'HelpDocController@index');

        $api->get('introduction', 'IntroductionController@index');
        $api->get('teacher', 'TeacherController@index');
        $api->get('student', 'StudentController@index');
        $api->get('classroom', 'ClassroomController@index');
        $api->get('class', 'ClassController@index');

        $api->get('media', 'MediaArtController@index');
        $api->get('score', 'ScoreController@index');
    });
});
