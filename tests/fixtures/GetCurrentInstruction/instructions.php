<?php

use Foo1 // cursor just before the comment
;

use Foo2,
    Bar // cursor jsut before the comment
;

use Foo3,
    // Bar
    Baz // cursor just before the comment
;

$a = new

    Foo // cursor just before the comment
;

array_merge(
    /* ; */
    array(';'),
    $some_variable,
    $object->call // cursor just before the comment
);
