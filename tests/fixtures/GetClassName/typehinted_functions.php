<?php

function (FooClass1 $bar) {
    $bar->
}

FuNcTiOn (FooClass2 $bar) {
    $bar->
}

function ($foo, FooClass3 $bar) {
    $bar->
}

function (FooClass4 $bar, $foo) {
    $bar->
}

function ($bar2, FooClass5 $bar, $foo) {
    $bar->
}

function (BarClass $bar2, FooClass6 $bar, $foo) {
    $bar->
}

function ($bar2, FooClass7 $bar, BarClass $foo) {
    $bar->
}

function (FooClass8 $bar)
{
    $bar->
}

class BazClass
{
    function bazFunction(FooClass9 $bar)
    {
        $bar->
    }

    function quxFunction(FooClass10 $baz)
    {
        $baz->
    }
}

