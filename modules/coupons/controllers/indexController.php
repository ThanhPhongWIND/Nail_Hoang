<?php
function construct(){
   load_model('index');
}
function indexAction()
{

    $list_coupons = get_coupons();

    $data = array();
    $data['list_coupons'] = $list_coupons;
    load_view('index', $data);
}
