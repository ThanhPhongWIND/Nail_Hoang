<?php
function get_name_service()
{
    $item = db_fetch_array("SELECT * FROM `tbl_detail_service`");
    if (!empty($item))
        return $item;
}

function get_service_by_name_detail()
{
    $item = db_fetch_array(
        " SELECT
        `tbl_service`.id_service,
        `tbl_service`.service_name,
        `tbl_image_service`.url_image,
        `tbl_detail_service`.name_detail
    FROM
        `tbl_service`
    INNER JOIN
        `tbl_detail_service` ON `tbl_service`.id_service = `tbl_detail_service`.id_service
    INNER JOIN
        `tbl_image_service` ON `tbl_service`.id_service = `tbl_image_service`.id_service
    WHERE
        `tbl_detail_service`.id_service = `tbl_service`.id_service
    GROUP BY
        `tbl_service`.id_service"

    );
    if (!empty($item))
        return $item;
}
