<?php 
function get_list_post(){
    $item = db_fetch_array("SELECT * FROM `tbl_post`");
    if (!empty($item))
        return $item;
}

function get_list_img_service_2(){
    $item = db_fetch_array("SELECT * FROM `tbl_service_2`");
    if (!empty($item))
        return $item;
}

function get_list_img_service_3(){
    $item = db_fetch_array("SELECT * FROM `tbl_service_3`");
    if (!empty($item))
        return $item;
}

function get_list_about(){
    $item = db_fetch_array("SELECT * FROM `tbl_about_us`");
    if (!empty($item))
        return $item;
}
function get_service_by_image_id(){
    $item = db_fetch_array(
        "SELECT `tbl_detail_service`.*, `tbl_detail_image`.image_url
                            FROM `tbl_detail_service`
                            INNER JOIN `tbl_detail_image`  ON `tbl_detail_service`.id_detail = `tbl_detail_image`.id_detail
                            WHERE `tbl_detail_service`.id_detail = `tbl_detail_image`.id_detail"

    );
    if (!empty($item))
        return $item;
}

function get_list_our(){
    $item = db_fetch_array("SELECT * FROM `tbl_our_service`");
    if (!empty($item))
        return $item;
}
function get_list_contact(){
    $item = db_fetch_array("SELECT * FROM `tbl_evaluate`");
    if (!empty($item))
        return $item;
}
