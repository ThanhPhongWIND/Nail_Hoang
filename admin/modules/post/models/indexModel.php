<?php


function insert_post($data)
{
    return db_insert('tbl_post', $data);
}
function insert_post_id($data)
{
    return db_insert('tbl_post', $data);
}

//them image
// function insert_image_post($data)
// {
//     return db_insert('tbl_images', $data);
// }

//phan list_post 
function get_pagging($num_page, $page, $base_url = "")
{
    //Đầu
    $str_pagging = "<ul class='pagination '>";
    if ($page > 1) {
        $page_prev = $page - 1;
        $str_pagging .= "
        <li class='page-item'>
            <a class='page-link' href='{$base_url}&page={$page_prev}' aria-label='Previous'>
                <span aria-hidden='true'>Trước</span>
         
            </a>
        </li>";
    }

    //Content
    for ($i = 1; $i <= $num_page; $i++) {
        $active = "";
        if ($i == $page)
            $active = "class = 'active'";
        $str_pagging .= "<li {$active} class='page-item'><a class='page-link' href='{$base_url}&page={$i}'>$i</a></li>";
    }
    if ($page < $num_page) {
        $page_next = $page + 1;
        $str_pagging .= "
        <li class='page-item'>
        <a class='page-link' href='{$base_url}&page={$page_next}' aria-label='Previous'>
            <span >Sau</span>
     
        </a>
    </li>";
    }

    //Cuối
    $str_pagging .= "</ul>";
    return $str_pagging;
}
function get_post($start = 1, $num_per_page = 5, $where = "")
{

    if (!empty($where))
        $where = "WHERE {$where}";
    $list_pages = db_fetch_array("SELECT * FROM `tbl_post` {$where} LIMIT {$start}, $num_per_page");
    return $list_pages;
}


//edit
function check_post_id($post_id){
    $item = db_num_rows("SELECT * FROM `tbl_post` WHERE `post_id` = '{$post_id}'");
    if (!empty($item))
        return $item;
}
function get_post_by_id($post_id){
    $item = db_fetch_row("SELECT * FROM `tbl_post` WHERE `post_id`= '{$post_id}'");
    if (!empty($item))
        return $item;
}
function update_post($post_id, $data){
    return db_update('tbl_post', $data, "`post_id` = '{$post_id}'");
}
//lay id danh muc
 function get_category_edit(){
    $item = db_fetch_array("SELECT * FROM `tbl_post`");
    if (!empty($item))
        return $item;
 }

//delete
function delete_post($id){
    return db_delete('tbl_post', "`post_id` = '{$id}'");
}

//search
function get_post_search($search){
    $item = db_fetch_array("SELECT * FROM `tbl_post` WHERE `post_title` LIKE '%$search%' OR `post_content` LIKE '%$search%'");
    if (!empty($item))
        return $item;
}