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
