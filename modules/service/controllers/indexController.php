<?php 
function construct(){
    load_model('index');
}
function indexAction()
{
    $get_name = get_name_service();
    $list_service = get_service_by_name_detail();
    $data = array();
    $data['list_service'] = $list_service;
    $data['get_name'] = $get_name;


    // show_array($list_service);
    load_view('index', $data);
}
