<?php
function get_coupons()
{
    $item = db_fetch_array("SELECT * FROM `tbl_coupons`");
    if (!empty($item))
        return $item;
}