<?php

function parse_item($post)
{
    // TODO: Parse it for real.
    $item = [];
    $item['category'] = $post['category'];
    $item['description'] = $post['description'];
    $item['name'] = $post['name'];
    $item['price'] = $post['price'];
    $item['quantity'] = $post['quantity'];
    $item['serial_code'] = $post['serial_code'];

    return $item;
}

function parse_user($post)
{
    // TODO: Parse it for real.
    $user = [];    
    $user["cap"] =intval($post["cap"]);
    $user["address"] =$post["address"];
    $user["city"] =$post["city"];
    $user["email"] =$post["email"];
    $user["IdList"] = NULL;
    $user["name"] =$post["name"];
    $user["surname"] =$post["surname"];
    $user["password"] =$post["password"];
    $user["phoneNumber"] =$post["phone"];
    $user["province"] =$post["province"];
    
    return $user;
}

function parse_seller($post)
{
    // TODO: Parse it for real.
    $user = []; 
    $user["companyName"] =$post["companyName"];
    $user["companyAddress"] =$post["companyAddress"];   
    $user["cap"] =intval($post["cap"]);
    $user["address"] =$post["address"];
    $user["city"] =$post["city"];
    $user["email"] =$post["email"];
    $user["name"] =$post["name"];
    $user["surname"] =$post["surname"];
    $user["password"] =$post["password"];
    $user["phone"] =$post["phone"];
    $user["province"] =$post["province"];

    return $user;
}
