<?php

class UserClass {

    const A_CONST = 'foo';

    var $public_property1;
    public $public_property2;
    protected $protected_property;
    private $private_property;

    public static $public_static_property;
    protected static $protected_static_property;
    private static $private_static_property;

    public function __construct() {
    }

    public function public_method($foo) {
    }

    private function private_method($foo) {
    }

    protected function protected_method($foo) {
    }

    public static function public_static_method($foo) {
    }

    static public function static_public_method($foo) {
    }

    private static function private_static_method($foo) {
    }

    protected static function protected_static_method($foo) {
    }
}
