<?php
function construct(){
    load_model('index');
}
function indexAction()
{
    $list_post = get_list_post();

    $get_sevice = get_service_by_image_id();

    


    $get_about = get_list_about();

    $get_our_service = get_list_our();

    $list_evaluate = get_list_contact();

    // show_array($get_sevice);
    $data = array();
    $data['list_post'] = $list_post;
    $data['get_sevice'] = $get_sevice;
    $data['get_about'] = $get_about;
    $data['get_our_service'] = $get_our_service;
    $data['list_evaluate'] = $list_evaluate;


    load_view('index', $data);
}
