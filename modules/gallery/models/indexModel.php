<?php
function get_galary()
{
    $item = db_fetch_array("SELECT * FROM `tbl_gallery`");
    if (!empty($item))
        return $item;
}