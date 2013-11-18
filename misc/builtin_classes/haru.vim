call extend(g:php_builtin_classes, {
\'HaruAnnotation': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'setBorderStyle': { 'signature': 'float $width, int $dash_on, int $dash_off | bool', 'return_type': 'bool'},
\     'setHighlightMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setIcon': { 'signature': 'int $icon | bool', 'return_type': 'bool'},
\     'setOpened': { 'signature': 'bool $opened | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruDestination': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'setFit': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setFitB': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setFitBH': { 'signature': 'float $top | bool', 'return_type': 'bool'},
\     'setFitBV': { 'signature': 'float $left | bool', 'return_type': 'bool'},
\     'setFitH': { 'signature': 'float $top | bool', 'return_type': 'bool'},
\     'setFitR': { 'signature': 'float $left, float $bottom, float $right, float $top | bool', 'return_type': 'bool'},
\     'setFitV': { 'signature': 'float $left | bool', 'return_type': 'bool'},
\     'setXYZ': { 'signature': 'float $left, float $top, float $zoom | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruDoc': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addPage': { 'signature': 'void | object', 'return_type': 'object'},
\     'addPageLabel': { 'signature': 'int $first_page, int $style, int $first_num [, string $prefix = ""] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'createOutline': { 'signature': 'string $title [, object $parent_outline [, object $encoder]] | object', 'return_type': 'object'},
\     'getCurrentEncoder': { 'signature': 'void | object', 'return_type': 'object'},
\     'getCurrentPage': { 'signature': 'void | object', 'return_type': 'object'},
\     'getEncoder': { 'signature': 'string $encoding | object', 'return_type': 'object'},
\     'getFont': { 'signature': 'string $fontname [, string $encoding] | object', 'return_type': 'object'},
\     'getInfoAttr': { 'signature': 'int $type | string', 'return_type': 'string'},
\     'getPageLayout': { 'signature': 'void | int', 'return_type': 'int'},
\     'getPageMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStreamSize': { 'signature': 'void | int', 'return_type': 'int'},
\     'insertPage': { 'signature': 'object $page | object', 'return_type': 'object'},
\     'loadJPEG': { 'signature': 'string $filename | object', 'return_type': 'object'},
\     'loadPNG': { 'signature': 'string $filename [, bool $deferred = false] | object', 'return_type': 'object'},
\     'loadRaw': { 'signature': 'string $filename, int $width, int $height, int $color_space | object', 'return_type': 'object'},
\     'loadTTC': { 'signature': 'string $fontfile, int $index [, bool $embed = false] | string', 'return_type': 'string'},
\     'loadTTF': { 'signature': 'string $fontfile [, bool $embed = false] | string', 'return_type': 'string'},
\     'loadType1': { 'signature': 'string $afmfile [, string $pfmfile] | string', 'return_type': 'string'},
\     'output': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'readFromStream': { 'signature': 'int $bytes | string', 'return_type': 'string'},
\     'resetError': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'resetStream': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'save': { 'signature': 'string $file | bool', 'return_type': 'bool'},
\     'saveToStream': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'setCompressionMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setCurrentEncoder': { 'signature': 'string $encoding | bool', 'return_type': 'bool'},
\     'setEncryptionMode': { 'signature': 'int $mode [, int $key_len = 5] | bool', 'return_type': 'bool'},
\     'setInfoAttr': { 'signature': 'int $type, string $info | bool', 'return_type': 'bool'},
\     'setInfoDateAttr': { 'signature': 'int $type, int $year, int $month, int $day, int $hour, int $min, int $sec, string $ind, int $off_hour, int $off_min | bool', 'return_type': 'bool'},
\     'setOpenAction': { 'signature': 'object $destination | bool', 'return_type': 'bool'},
\     'setPageLayout': { 'signature': 'int $layout | bool', 'return_type': 'bool'},
\     'setPageMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setPagesConfiguration': { 'signature': 'int $page_per_pages | bool', 'return_type': 'bool'},
\     'setPassword': { 'signature': 'string $owner_password, string $user_password | bool', 'return_type': 'bool'},
\     'setPermission': { 'signature': 'int $permission | bool', 'return_type': 'bool'},
\     'useCNSEncodings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useCNSFonts': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useCNTEncodings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useCNTFonts': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useJPEncodings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useJPFonts': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useKREncodings': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'useKRFonts': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruEncoder': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getByteType': { 'signature': 'string $text, int $index | int', 'return_type': 'int'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'getUnicode': { 'signature': 'int $character | int', 'return_type': 'int'},
\     'getWritingMode': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'HaruException': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getMessage': { 'signature': 'void | string', 'return_type': 'string'},
\     'getPrevious': { 'signature': 'void | Exception', 'return_type': 'Exception'},
\     'getCode': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'getFile': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLine': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTrace': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTraceAsString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'HaruFont': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getAscent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCapHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDescent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getEncodingName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFontName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTextWidth': { 'signature': 'string $text | array', 'return_type': 'array'},
\     'getUnicodeWidth': { 'signature': 'int $character | int', 'return_type': 'int'},
\     'getXHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'measureText': { 'signature': 'string $text, float $width, float $font_size, float $char_space, float $word_space [, bool $word_wrap = false] | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'HaruImage': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getBitsPerComponent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorSpace': { 'signature': 'void | string', 'return_type': 'string'},
\     'getHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSize': { 'signature': 'void | array', 'return_type': 'array'},
\     'getWidth': { 'signature': 'void | int', 'return_type': 'int'},
\     'setColorMask': { 'signature': 'int $rmin, int $rmax, int $gmin, int $gmax, int $bmin, int $bmax | bool', 'return_type': 'bool'},
\     'setMaskImage': { 'signature': 'object $mask_image | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruOutline': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'setDestination': { 'signature': 'object $destination | bool', 'return_type': 'bool'},
\     'setOpened': { 'signature': 'bool $opened | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'HaruPage': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'arc': { 'signature': 'float $x, float $y, float $ray, float $ang1, float $ang2 | bool', 'return_type': 'bool'},
\     'beginText': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'circle': { 'signature': 'float $x, float $y, float $ray | bool', 'return_type': 'bool'},
\     'closePath': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'concat': { 'signature': 'float $a, float $b, float $c, float $d, float $x, float $y | bool', 'return_type': 'bool'},
\     'createDestination': { 'signature': 'void | object', 'return_type': 'object'},
\     'createLinkAnnotation': { 'signature': 'array $rectangle, object $destination | object', 'return_type': 'object'},
\     'createTextAnnotation': { 'signature': 'array $rectangle, string $text [, object $encoder] | object', 'return_type': 'object'},
\     'createURLAnnotation': { 'signature': 'array $rectangle, string $url | object', 'return_type': 'object'},
\     'curveTo2': { 'signature': 'float $x2, float $y2, float $x3, float $y3 | bool', 'return_type': 'bool'},
\     'curveTo3': { 'signature': 'float $x1, float $y1, float $x3, float $y3 | bool', 'return_type': 'bool'},
\     'curveTo': { 'signature': 'float $x1, float $y1, float $x2, float $y2, float $x3, float $y3 | bool', 'return_type': 'bool'},
\     'drawImage': { 'signature': 'object $image, float $x, float $y, float $width, float $height | bool', 'return_type': 'bool'},
\     'ellipse': { 'signature': 'float $x, float $y, float $xray, float $yray | bool', 'return_type': 'bool'},
\     'endPath': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'endText': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'eofill': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'eoFillStroke': { 'signature': '[ bool $close_path = false] | bool', 'return_type': 'bool'},
\     'fill': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fillStroke': { 'signature': '[ bool $close_path = false] | bool', 'return_type': 'bool'},
\     'getCharSpace': { 'signature': 'void | float', 'return_type': 'float'},
\     'getCMYKFill': { 'signature': 'void | array', 'return_type': 'array'},
\     'getCMYKStroke': { 'signature': 'void | array', 'return_type': 'array'},
\     'getCurrentFont': { 'signature': 'void | object', 'return_type': 'object'},
\     'getCurrentFontSize': { 'signature': 'void | float', 'return_type': 'float'},
\     'getCurrentPos': { 'signature': 'void | array', 'return_type': 'array'},
\     'getCurrentTextPos': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDash': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFillingColorSpace': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFlatness': { 'signature': 'void | float', 'return_type': 'float'},
\     'getGMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getGrayFill': { 'signature': 'void | float', 'return_type': 'float'},
\     'getGrayStroke': { 'signature': 'void | float', 'return_type': 'float'},
\     'getHeight': { 'signature': 'void | float', 'return_type': 'float'},
\     'getHorizontalScaling': { 'signature': 'void | float', 'return_type': 'float'},
\     'getLineCap': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLineJoin': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLineWidth': { 'signature': 'void | float', 'return_type': 'float'},
\     'getMiterLimit': { 'signature': 'void | float', 'return_type': 'float'},
\     'getRGBFill': { 'signature': 'void | array', 'return_type': 'array'},
\     'getRGBStroke': { 'signature': 'void | array', 'return_type': 'array'},
\     'getStrokingColorSpace': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTextLeading': { 'signature': 'void | float', 'return_type': 'float'},
\     'getTextMatrix': { 'signature': 'void | array', 'return_type': 'array'},
\     'getTextRenderingMode': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTextRise': { 'signature': 'void | float', 'return_type': 'float'},
\     'getTextWidth': { 'signature': 'string $text | float', 'return_type': 'float'},
\     'getTransMatrix': { 'signature': 'void | array', 'return_type': 'array'},
\     'getWidth': { 'signature': 'void | float', 'return_type': 'float'},
\     'getWordSpace': { 'signature': 'void | float', 'return_type': 'float'},
\     'lineTo': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'measureText': { 'signature': 'string $text, float $width [, bool $wordwrap = false] | int', 'return_type': 'int'},
\     'moveTextPos': { 'signature': 'float $x, float $y [, bool $set_leading = false] | bool', 'return_type': 'bool'},
\     'moveTo': { 'signature': 'float $x, float $y | bool', 'return_type': 'bool'},
\     'moveToNextLine': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rectangle': { 'signature': 'float $x, float $y, float $width, float $height | bool', 'return_type': 'bool'},
\     'setCharSpace': { 'signature': 'float $char_space | bool', 'return_type': 'bool'},
\     'setCMYKFill': { 'signature': 'float $c, float $m, float $y, float $k | bool', 'return_type': 'bool'},
\     'setCMYKStroke': { 'signature': 'float $c, float $m, float $y, float $k | bool', 'return_type': 'bool'},
\     'setDash': { 'signature': 'array $pattern, int $phase | bool', 'return_type': 'bool'},
\     'setFlatness': { 'signature': 'float $flatness | bool', 'return_type': 'bool'},
\     'setFontAndSize': { 'signature': 'object $font, float $size | bool', 'return_type': 'bool'},
\     'setGrayFill': { 'signature': 'float $value | bool', 'return_type': 'bool'},
\     'setGrayStroke': { 'signature': 'float $value | bool', 'return_type': 'bool'},
\     'setHeight': { 'signature': 'float $height | bool', 'return_type': 'bool'},
\     'setHorizontalScaling': { 'signature': 'float $scaling | bool', 'return_type': 'bool'},
\     'setLineCap': { 'signature': 'int $cap | bool', 'return_type': 'bool'},
\     'setLineJoin': { 'signature': 'int $join | bool', 'return_type': 'bool'},
\     'setLineWidth': { 'signature': 'float $width | bool', 'return_type': 'bool'},
\     'setMiterLimit': { 'signature': 'float $limit | bool', 'return_type': 'bool'},
\     'setRGBFill': { 'signature': 'float $r, float $g, float $b | bool', 'return_type': 'bool'},
\     'setRGBStroke': { 'signature': 'float $r, float $g, float $b | bool', 'return_type': 'bool'},
\     'setRotate': { 'signature': 'int $angle | bool', 'return_type': 'bool'},
\     'setSize': { 'signature': 'int $size, int $direction | bool', 'return_type': 'bool'},
\     'setSlideShow': { 'signature': 'int $type, float $disp_time, float $trans_time | bool', 'return_type': 'bool'},
\     'setTextLeading': { 'signature': 'float $text_leading | bool', 'return_type': 'bool'},
\     'setTextMatrix': { 'signature': 'float $a, float $b, float $c, float $d, float $x, float $y | bool', 'return_type': 'bool'},
\     'setTextRenderingMode': { 'signature': 'int $mode | bool', 'return_type': 'bool'},
\     'setTextRise': { 'signature': 'float $rise | bool', 'return_type': 'bool'},
\     'setWidth': { 'signature': 'float $width | bool', 'return_type': 'bool'},
\     'setWordSpace': { 'signature': 'float $word_space | bool', 'return_type': 'bool'},
\     'showText': { 'signature': 'string $text | bool', 'return_type': 'bool'},
\     'showTextNextLine': { 'signature': 'string $text [, float $word_space = 0 [, float $char_space = 0]] | bool', 'return_type': 'bool'},
\     'stroke': { 'signature': '[ bool $close_path = false] | bool', 'return_type': 'bool'},
\     'textOut': { 'signature': 'float $x, float $y, string $text | bool', 'return_type': 'bool'},
\     'textRect': { 'signature': 'float $left, float $top, float $right, float $bottom, string $text [, int $align = HaruPage::TALIGN_LEFT] | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})
