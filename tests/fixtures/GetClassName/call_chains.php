<?php

class Bar {

    /**
     * foo
     *
     * @var Foo
     * @access public
     */
    var $foo;

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
     * bar
     *
     * @var Bar
     */
    public $bar;

    /**
     * bar
     *
     * @var Bar
     */
    private $bar2;

    /**
     * bar
     *
     * @var Bar
     */
    protected $bar3;

    /**
     * @var Bar
     */
    protected static $static_bar;

    /**
     * @var Bar
     */
    static public $static_bar2;

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
$foo->return_bar()->return_foo()->return_bar()->f

// @var $foo Foo
$foo->return_bar()->return_foo()->return_bar()->

function fun(Foo $foo) {
    $foo->return_bar()->return_foo()->return_bar()->
}

$foo->bar->
$foo->bar2->
$foo->bar3->
$foo->bar3->foo->



// ----

$doc = new DOMDocument;
$doc->createAttribute()->ownerElement->

$d = new DateTime;
$d->add()->getTimezone()->
