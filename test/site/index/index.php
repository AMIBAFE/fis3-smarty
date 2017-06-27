<?php


$id = is_numeric($_GET['id']) ? intval($_GET['id']) - 1 : 0;

// 给变量 $fis_data 赋值即可
$fis_data = array(
        "site" => array(
            "title" => "fis3-smarty demo"
        ),
        "data" => array(
            "post" => isset($posts[$id]) ? $posts[$id] : $posts[0]
        ),
        "posts" => array(
        array(
            "title" => "测试 1",
            "link" => "/post/id/1",
            "content" => "测试 1"
        ),
        array(
            "title" => "测试 2",
            "link" => "/post/id/2",
            "content" => "测试 2"
        ),
        array(
            "title" => "测试 3",
            "link" => "/post/id/3",
            "content" => "测试 3"
        )
    )
);