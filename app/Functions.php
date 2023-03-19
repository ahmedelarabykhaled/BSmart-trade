<?php

if( ! function_exists('pertty_print'))
{
    function pretty_print($data){
        print "<pre>" . print_r($data, true) . "</pre>";
    }
}