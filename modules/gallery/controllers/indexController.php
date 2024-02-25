<?php
function construct(){
    load_model('index');
}
function indexAction()
{
    $list_garaly = get_galary();
    $data = array();
    $data['list_garaly'] = $list_garaly;
    load_view('index', $data);
}