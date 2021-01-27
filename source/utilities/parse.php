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
    $random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
    $userParsedParsed = [];
    $userParsed['cap'] = intval($post['cap']);
    $userParsed['address'] = $post['address'];
    $userParsed['city'] = $post['city'];
    $userParsed['email'] = $post['email'];
    $userParsed['IdList'] = $post['IdList'];
    $userParsed['name'] = $post['name'];
    $userParsed['surname'] = $post['surname'];
    $userParsed['password'] = hash('sha512', $post['password'].$random_salt);
    $userParsed['phoneNumber'] = $post['phone'];
    $userParsed['province'] = $post['province'];
    $userParsed['salt'] = $random_salt;

    return $userParsed;
}

function parse_seller($post)
{
    // TODO: Parse it for real.
    $random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
    $userParsed = [];
    $userParsed['companyName'] = $post['companyName'];
    $userParsed['companyAddress'] = $post['companyAddress'];
    $userParsed['cap'] = intval($post['cap']);
    $userParsed['address'] = $post['address'];
    $userParsed['city'] = $post['city'];
    $userParsed['email'] = $post['email'];
    $userParsed['name'] = $post['name'];
    $userParsed['surname'] = $post['surname'];
    $userParsed['password'] = hash('sha512', $post['password'].$random_salt);
    $userParsed['phone'] = $post['phone'];
    $userParsed['province'] = $post['province'];
    $userParsed['salt'] = $random_salt;

    return $userParsed;
}
