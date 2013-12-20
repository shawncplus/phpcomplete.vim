call extend(g:php_builtin_classes, {
\'swfaction': {
\   'name': 'SWFAction',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $script', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'swfbitmap': {
\   'name': 'SWFBitmap',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $file [, mixed $alphafile]', 'return_type': ''},
\     'getHeight': { 'signature': 'void | float', 'return_type': 'float'},
\     'getWidth': { 'signature': 'void | float', 'return_type': 'float'},
\   },
\   'static_methods': {
\   },
\},
\'swfbutton': {
\   'name': 'SWFButton',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addAction': { 'signature': 'SWFAction $action, int $flags | void', 'return_type': 'void'},
\     'addASound': { 'signature': 'SWFSound $sound, int $flags | SWFSoundInstance', 'return_type': 'SWFSoundInstance'},
\     'addShape': { 'signature': 'SWFShape $shape, int $flags | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'setAction': { 'signature': 'SWFAction $action | void', 'return_type': 'void'},
\     'setDown': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\     'setHit': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\     'setMenu': { 'signature': 'int $flag | void', 'return_type': 'void'},
\     'setOver': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\     'setUp': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swfdisplayitem': {
\   'name': 'SWFDisplayItem',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addAction': { 'signature': 'SWFAction $action, int $flags | void', 'return_type': 'void'},
\     'addColor': { 'signature': 'int $red, int $green, int $blue [, int $a] | void', 'return_type': 'void'},
\     'endMask': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRot': { 'signature': 'void | float', 'return_type': 'float'},
\     'getX': { 'signature': 'void | float', 'return_type': 'float'},
\     'getXScale': { 'signature': 'void | float', 'return_type': 'float'},
\     'getXSkew': { 'signature': 'void | float', 'return_type': 'float'},
\     'getY': { 'signature': 'void | float', 'return_type': 'float'},
\     'getYScale': { 'signature': 'void | float', 'return_type': 'float'},
\     'getYSkew': { 'signature': 'void | float', 'return_type': 'float'},
\     'move': { 'signature': 'float $dx, float $dy | void', 'return_type': 'void'},
\     'moveTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'multColor': { 'signature': 'float $red, float $green, float $blue [, float $a] | void', 'return_type': 'void'},
\     'remove': { 'signature': 'void | void', 'return_type': 'void'},
\     'rotate': { 'signature': 'float $angle | void', 'return_type': 'void'},
\     'rotateTo': { 'signature': 'float $angle | void', 'return_type': 'void'},
\     'scale': { 'signature': 'float $dx, float $dy | void', 'return_type': 'void'},
\     'scaleTo': { 'signature': 'float $x [, float $y] | void', 'return_type': 'void'},
\     'setDepth': { 'signature': 'int $depth | void', 'return_type': 'void'},
\     'setMaskLevel': { 'signature': 'int $level | void', 'return_type': 'void'},
\     'setMatrix': { 'signature': 'float $a, float $b, float $c, float $d, float $x, float $y | void', 'return_type': 'void'},
\     'setName': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'setRatio': { 'signature': 'float $ratio | void', 'return_type': 'void'},
\     'skewX': { 'signature': 'float $ddegrees | void', 'return_type': 'void'},
\     'skewXTo': { 'signature': 'float $degrees | void', 'return_type': 'void'},
\     'skewY': { 'signature': 'float $ddegrees | void', 'return_type': 'void'},
\     'skewYTo': { 'signature': 'float $degrees | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swffill': {
\   'name': 'SWFFill',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'moveTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'rotateTo': { 'signature': 'float $angle | void', 'return_type': 'void'},
\     'scaleTo': { 'signature': 'float $x [, float $y] | void', 'return_type': 'void'},
\     'skewXTo': { 'signature': 'float $x | void', 'return_type': 'void'},
\     'skewYTo': { 'signature': 'float $y | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swffont': {
\   'name': 'SWFFont',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $filename', 'return_type': ''},
\     'getAscent': { 'signature': 'void | float', 'return_type': 'float'},
\     'getDescent': { 'signature': 'void | float', 'return_type': 'float'},
\     'getLeading': { 'signature': 'void | float', 'return_type': 'float'},
\     'getShape': { 'signature': 'int $code | string', 'return_type': 'string'},
\     'getUTF8Width': { 'signature': 'string $string | float', 'return_type': 'float'},
\     'getWidth': { 'signature': 'string $string | float', 'return_type': 'float'},
\   },
\   'static_methods': {
\   },
\},
\'swffontchar': {
\   'name': 'SWFFontChar',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addChars': { 'signature': 'string $char | void', 'return_type': 'void'},
\     'addUTF8Chars': { 'signature': 'string $char | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swfgradient': {
\   'name': 'SWFGradient',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addEntry': { 'signature': 'float $ratio, int $red, int $green, int $blue [, int $alpha = 255] | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'swfmorph': {
\   'name': 'SWFMorph',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getShape1': { 'signature': 'void | SWFShape', 'return_type': 'SWFShape'},
\     'getShape2': { 'signature': 'void | SWFShape', 'return_type': 'SWFShape'},
\   },
\   'static_methods': {
\   },
\},
\'swfmovie': {
\   'name': 'SWFMovie',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'object $instance | mixed', 'return_type': 'mixed'},
\     'addExport': { 'signature': 'SWFCharacter $char, string $name | void', 'return_type': 'void'},
\     'addFont': { 'signature': 'SWFFont $font | mixed', 'return_type': 'mixed'},
\     '__construct': { 'signature': '[ int $version]', 'return_type': ''},
\     'importChar': { 'signature': 'string $libswf, string $name | SWFSprite', 'return_type': 'SWFSprite'},
\     'importFont': { 'signature': 'string $libswf, string $name | SWFFontChar', 'return_type': 'SWFFontChar'},
\     'labelFrame': { 'signature': 'string $label | void', 'return_type': 'void'},
\     'nextFrame': { 'signature': 'void | void', 'return_type': 'void'},
\     'output': { 'signature': '[ int $compression] | int', 'return_type': 'int'},
\     'remove': { 'signature': 'object $instance | void', 'return_type': 'void'},
\     'save': { 'signature': 'string $filename [, int $compression = -1] | int', 'return_type': 'int'},
\     'saveToFile': { 'signature': 'resource $x [, int $compression = -1] | int', 'return_type': 'int'},
\     'setbackground': { 'signature': 'int $red, int $green, int $blue | void', 'return_type': 'void'},
\     'setDimension': { 'signature': 'float $width, float $height | void', 'return_type': 'void'},
\     'setFrames': { 'signature': 'int $number | void', 'return_type': 'void'},
\     'setRate': { 'signature': 'float $rate | void', 'return_type': 'void'},
\     'startSound': { 'signature': 'SWFSound $sound | SWFSoundInstance', 'return_type': 'SWFSoundInstance'},
\     'stopSound': { 'signature': 'SWFSound $sound | void', 'return_type': 'void'},
\     'streamMP3': { 'signature': 'mixed $mp3file [, float $skip = 0] | int', 'return_type': 'int'},
\     'writeExports': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swfprebuiltclip': {
\   'name': 'SWFPrebuiltClip',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'mixed $file', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'swfshape': {
\   'name': 'SWFShape',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addFill': { 'signature': 'int $red, int $green, int $blue [, int $alpha = 255] | SWFFill', 'return_type': 'SWFFill'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'drawArc': { 'signature': 'float $r, float $startAngle, float $endAngle | void', 'return_type': 'void'},
\     'drawCircle': { 'signature': 'float $r | void', 'return_type': 'void'},
\     'drawCubic': { 'signature': 'float $bx, float $by, float $cx, float $cy, float $dx, float $dy | int', 'return_type': 'int'},
\     'drawCubicTo': { 'signature': 'float $bx, float $by, float $cx, float $cy, float $dx, float $dy | int', 'return_type': 'int'},
\     'drawCurve': { 'signature': 'float $controldx, float $controldy, float $anchordx, float $anchordy [, float $targetdx [, float $targetdy]] | int', 'return_type': 'int'},
\     'drawCurveTo': { 'signature': 'float $controlx, float $controly, float $anchorx, float $anchory [, float $targetx [, float $targety]] | int', 'return_type': 'int'},
\     'drawGlyph': { 'signature': 'SWFFont $font, string $character [, int $size] | void', 'return_type': 'void'},
\     'drawLine': { 'signature': 'float $dx, float $dy | void', 'return_type': 'void'},
\     'drawLineTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'movePen': { 'signature': 'float $dx, float $dy | void', 'return_type': 'void'},
\     'movePenTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'setLeftFill': { 'signature': 'SWFGradient $fill | void', 'return_type': 'void'},
\     'setLine': { 'signature': 'SWFShape $shape | void', 'return_type': 'void'},
\     'setRightFill': { 'signature': 'SWFGradient $fill | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swfsound': {
\   'name': 'SWFSound',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $filename [, int $flags = 0]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'swfsoundinstance': {
\   'name': 'SWFSoundInstance',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'loopCount': { 'signature': 'int $point | void', 'return_type': 'void'},
\     'loopInPoint': { 'signature': 'int $point | void', 'return_type': 'void'},
\     'loopOutPoint': { 'signature': 'int $point | void', 'return_type': 'void'},
\     'noMultiple': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swfsprite': {
\   'name': 'SWFSprite',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'add': { 'signature': 'object $object | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'labelFrame': { 'signature': 'string $label | void', 'return_type': 'void'},
\     'nextFrame': { 'signature': 'void | void', 'return_type': 'void'},
\     'remove': { 'signature': 'object $object | void', 'return_type': 'void'},
\     'setFrames': { 'signature': 'int $number | void', 'return_type': 'void'},
\     'startSound': { 'signature': 'SWFSound $sount | SWFSoundInstance', 'return_type': 'SWFSoundInstance'},
\     'stopSound': { 'signature': 'SWFSound $sount | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swftext': {
\   'name': 'SWFText',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addString': { 'signature': 'string $string | void', 'return_type': 'void'},
\     'addUTF8String': { 'signature': 'string $text | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getAscent': { 'signature': 'void | float', 'return_type': 'float'},
\     'getDescent': { 'signature': 'void | float', 'return_type': 'float'},
\     'getLeading': { 'signature': 'void | float', 'return_type': 'float'},
\     'getUTF8Width': { 'signature': 'string $string | float', 'return_type': 'float'},
\     'getWidth': { 'signature': 'string $string | float', 'return_type': 'float'},
\     'moveTo': { 'signature': 'float $x, float $y | void', 'return_type': 'void'},
\     'setColor': { 'signature': 'int $red, int $green, int $blue [, int $a = 255] | void', 'return_type': 'void'},
\     'setFont': { 'signature': 'SWFFont $font | void', 'return_type': 'void'},
\     'setHeight': { 'signature': 'float $height | void', 'return_type': 'void'},
\     'setSpacing': { 'signature': 'float $spacing | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swftextfield': {
\   'name': 'SWFTextField',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addChars': { 'signature': 'string $chars | void', 'return_type': 'void'},
\     'addString': { 'signature': 'string $string | void', 'return_type': 'void'},
\     'align': { 'signature': 'int $alignement | void', 'return_type': 'void'},
\     '__construct': { 'signature': '[ int $flags]', 'return_type': ''},
\     'setBounds': { 'signature': 'float $width, float $height | void', 'return_type': 'void'},
\     'setColor': { 'signature': 'int $red, int $green, int $blue [, int $a = 255] | void', 'return_type': 'void'},
\     'setFont': { 'signature': 'SWFFont $font | void', 'return_type': 'void'},
\     'setHeight': { 'signature': 'float $height | void', 'return_type': 'void'},
\     'setIndentation': { 'signature': 'float $width | void', 'return_type': 'void'},
\     'setLeftMargin': { 'signature': 'float $width | void', 'return_type': 'void'},
\     'setLineSpacing': { 'signature': 'float $height | void', 'return_type': 'void'},
\     'setMargins': { 'signature': 'float $left, float $right | void', 'return_type': 'void'},
\     'setName': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'setPadding': { 'signature': 'float $padding | void', 'return_type': 'void'},
\     'setRightMargin': { 'signature': 'float $width | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'swfvideostream': {
\   'name': 'SWFVideoStream',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $file]', 'return_type': ''},
\     'getNumFrames': { 'signature': 'void | int', 'return_type': 'int'},
\     'setDimension': { 'signature': 'int $x, int $y | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\})
