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



$some->foo = $some_long_variable
->love()
->me()
->love()
->me()
->say()
->that()
->you()
->love // cursor just before comment

class Foo {
    public function bar()
    {
        $this->foo-> // cursor before the comment
    }
}

if (true) {
}
$a = "foo" // cursor just before the comment
