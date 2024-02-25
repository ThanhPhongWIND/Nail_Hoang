<?php 
function get_about()
{
    $item = db_fetch_array("SELECT * FROM `tbl_about_us`");
    if (!empty($item))
        return $item;
}