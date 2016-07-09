<?php

class Foobar2 {

	/**
	 * Constructor
	 *
	 * Some docs2
	 */
	public function __construct() {
	}
}

class Foobar {

	/**
	 * Constructor
	 *
	 * Some docs
	 */
	public function __construct($foo = 'bar') {
		$this->foo = $foo;
	}
}


$f = new Foobar
;
