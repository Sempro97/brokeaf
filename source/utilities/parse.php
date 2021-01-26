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
    $user = [];
    $user['cap'] = intval($post['cap']);
    $user['address'] = $post['address'];
    $user['city'] = $post['city'];
    $user['email'] = $post['email'];
    $user['IdList'] = null;
    $user['name'] = $post['name'];
    $user['surname'] = $post['surname'];
    $user['password'] = hash('sha512', $post['password'].$random_salt);
    $user['phoneNumber'] = $post['phone'];
    $user['province'] = $post['province'];
    $user['salt'] = $random_salt;

    return $user;
}

function parse_seller($post)
{
    // TODO: Parse it for real.
    $random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
    $user = [];
    $user['companyName'] = $post['companyName'];
    $user['companyAddress'] = $post['companyAddress'];
    $user['cap'] = intval($post['cap']);
    $user['address'] = $post['address'];
    $user['city'] = $post['city'];
    $user['email'] = $post['email'];
    $user['name'] = $post['name'];
    $user['surname'] = $post['surname'];
    $user['password'] = hash('sha512', $post['password'].$random_salt);
    $user['phone'] = $post['phone'];
    $user['province'] = $post['province'];
    $user['salt'] = $random_salt;

    return $user;
}
