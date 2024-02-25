<?php
function construct(){
    load_model('index');
}
function indexAction()
{

    $list_about = get_about();

    $data = array();
    $data['list_about'] = $list_about;
    load_view('index', $data);
}
