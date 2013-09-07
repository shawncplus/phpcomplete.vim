<?php

class Bar {
    /**
     * return_foo
     *
     *
     * @return Foo
     */
    public function return_foo() {
    }
}

class Foo {
    /**
     * return_bar
     *
     * @return Bar
     */
    public function return_bar() {
    }
}

// not intended to recite every way that is not $this-> or (new Foo)->
// just some example of that path

$foo = new Foo;
$foo->return_bar()->return_foo()->return_bar()->

// @var $foo Foo
$foo->return_bar()->return_foo()->return_bar()->

function fun(Foo $foo) {
    $foo->return_bar()->return_foo()->return_bar()->
}


