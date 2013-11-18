call extend(g:php_builtin_classes, {
\'Cairo': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'availableFonts': { 'signature': 'void | array', 'return_type': 'array'},
\     'availableSurfaces': { 'signature': 'void | array', 'return_type': 'array'},
\     'statusToString': { 'signature': 'int $status | string', 'return_type': 'string'},
\     'version': { 'signature': 'void | int', 'return_type': 'int'},
\     'versionString': { 'signature': 'void | string', 'return_type': 'string'},
\   },
\},
\'CairoAntialias': {
\   'constants': {
\     'MODE_DEFAULT': '0',
\     'MODE_NONE': '1',
\     'MODE_GRAY': '2',
\     'MODE_SUBPIXEL': '3',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoContent': {
\   'constants': {
\     'COLOR': '4096',
\     'ALPHA': '8192',
\     'COLOR_ALPHA': '12288',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoContext': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendPath': { 'signature': 'CairoPath $path | void', 'return_type': 'void'},
\     'arc': { 'signature': 'float $x, float $y, float $radius, float $angle1, float $angle2 | void', 'return_type': 'void'},
\     'arcNegative': { 'signature': 'float $x, float $y, float $radius, float $angle1, float $angle2 | void', 'return_type': 'void'},
\     'clip': { 'signature': 'void | void', 'return_type': 'void'},
\     'clipExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'clipPreserve': { 'signature': 'void | void', 'return_type': 'void'},
\     'clipRectangleList': { 'signature': 'void | array', 'return_type': 'array'},
\     'closePath': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'CairoSurface $surface', 'return_type': ''},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'copyPath': { 'signature': 'void | CairoPath', 'return_type': 'CairoPath'},
\     'copyPathFlat': { 'signature': 'void | CairoPath', 'return_type': 'CairoPath'},
\     'curveTo': { 'signature': 'float $x1, float $y1, float $x2, float $y2, float $x3, float $y3 | void', 'return_type': 'void'},
\     'deviceToUser': { 'signature': 'float $x, float $y | array', 'return_type': 'array'},
\     'deviceToUserDistance': { 'signature': 'float $x, float $y | array', 'return_type': 'array'},
\     'fill': { 'signature': 'void | void', 'return_type': 'void'},
\     'fillExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'fillPreserve': { 'signature': 'void | void', 'return_type': 'void'},
\     'fontExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'getAntialias': { 'signature': 'void | int', 'return_type': 'int'},
\     'getCurrentPoint': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDash': { 'signature': 'void | array', 'return_type': 'array'},
\     'getDashCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFillRule': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFontFace': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFontMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getGroupTarget': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLineCap': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLineJoin': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLineWidth': { 'signature': 'void | float', 'return_type': 'float'},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getMiterLimit': { 'signature': 'void | float', 'return_type': 'float'},
\     'getOperator': { 'signature': 'void | int', 'return_type': 'int'},
\     'getScaledFont': { 'signature': 'void | void', 'return_type': 'void'},
\     'getSource': { 'signature': 'void | void', 'return_type': 'void'},
\     'getTarget': { 'signature': 'void | void', 'return_type': 'void'},
\     'getTolerance': { 'signature': 'void | float', 'return_type': 'float'},
\     'glyphPath': { 'signature': 'array $glyphs | void', 'return_type': 'void'},
\     'hasCurrentPoint': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'identityMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'inFill': { 'signature': 'string $x, string $y | bool', 'return_type': 'bool'},
\     'inStroke': { 'signature': 'string $x, string $y | bool', 'return_type': 'bool'},
\     'lineTo': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'mask': { 'signature': 'string $pattern | void', 'return_type': 'void'},
\     'maskSurface': { 'signature': 'string $surface [, string $x [, string $y]] | void', 'return_type': 'void'},
\     'moveTo': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'newPath': { 'signature': 'void | void', 'return_type': 'void'},
\     'newSubPath': { 'signature': 'void | void', 'return_type': 'void'},
\     'paint': { 'signature': 'void | void', 'return_type': 'void'},
\     'paintWithAlpha': { 'signature': 'string $alpha | void', 'return_type': 'void'},
\     'pathExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'popGroup': { 'signature': 'void | void', 'return_type': 'void'},
\     'popGroupToSource': { 'signature': 'void | void', 'return_type': 'void'},
\     'pushGroup': { 'signature': 'void | void', 'return_type': 'void'},
\     'pushGroupWithContent': { 'signature': 'string $content | void', 'return_type': 'void'},
\     'rectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'relCurveTo': { 'signature': 'string $x1, string $y1, string $x2, string $y2, string $x3, string $y3 | void', 'return_type': 'void'},
\     'relLineTo': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'relMoveTo': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'resetClip': { 'signature': 'void | void', 'return_type': 'void'},
\     'restore': { 'signature': 'void | void', 'return_type': 'void'},
\     'rotate': { 'signature': 'string $angle | void', 'return_type': 'void'},
\     'save': { 'signature': 'void | void', 'return_type': 'void'},
\     'scale': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'selectFontFace': { 'signature': 'string $family [, string $slant [, string $weight]] | void', 'return_type': 'void'},
\     'setAntialias': { 'signature': '[ string $antialias] | void', 'return_type': 'void'},
\     'setDash': { 'signature': 'string $dashes [, string $offset] | void', 'return_type': 'void'},
\     'setFillRule': { 'signature': 'string $setting | void', 'return_type': 'void'},
\     'setFontFace': { 'signature': 'CairoFontFace $fontface | void', 'return_type': 'void'},
\     'setFontMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'setFontOptions': { 'signature': 'string $fontoptions | void', 'return_type': 'void'},
\     'setFontSize': { 'signature': 'string $size | void', 'return_type': 'void'},
\     'setLineCap': { 'signature': 'string $setting | void', 'return_type': 'void'},
\     'setLineJoin': { 'signature': 'string $setting | void', 'return_type': 'void'},
\     'setLineWidth': { 'signature': 'string $width | void', 'return_type': 'void'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'setMiterLimit': { 'signature': 'string $limit | void', 'return_type': 'void'},
\     'setOperator': { 'signature': 'string $setting | void', 'return_type': 'void'},
\     'setScaledFont': { 'signature': 'string $scaledfont | void', 'return_type': 'void'},
\     'setSource': { 'signature': 'string $pattern | void', 'return_type': 'void'},
\     'setSourceRGB': { 'signature': 'string $red, string $green, string $blue | void', 'return_type': 'void'},
\     'setSourceRGBA': { 'signature': 'string $red, string $green, string $blue, string $alpha | void', 'return_type': 'void'},
\     'setSourceSurface': { 'signature': 'string $surface [, string $x [, string $y]] | void', 'return_type': 'void'},
\     'setTolerance': { 'signature': 'string $tolerance | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'showText': { 'signature': 'string $text | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'stroke': { 'signature': 'void | void', 'return_type': 'void'},
\     'strokeExtents': { 'signature': 'void | array', 'return_type': 'array'},
\     'strokePreserve': { 'signature': 'void | void', 'return_type': 'void'},
\     'textExtents': { 'signature': 'string $text | array', 'return_type': 'array'},
\     'textPath': { 'signature': 'string $string | void', 'return_type': 'void'},
\     'transform': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'translate': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'userToDevice': { 'signature': 'string $x, string $y | array', 'return_type': 'array'},
\     'userToDeviceDistance': { 'signature': 'string $x, string $y | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'CairoException': {
\   'constants': {
\   },
\   'properties': {
\     'message': { 'initializer': '', 'type': 'string'},
\     'code': { 'initializer': '', 'type': 'int'},
\     'file': { 'initializer': '', 'type': 'string'},
\     'line': { 'initializer': '', 'type': 'int'},
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
\'CairoExtend': {
\   'constants': {
\     'NONE': '0',
\     'REPEAT': '1',
\     'REFLECT': '2',
\     'PAD': '3',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoFillRule': {
\   'constants': {
\     'WINDING': '0',
\     'EVEN_ODD': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoFilter': {
\   'constants': {
\     'FAST': '0',
\     'GOOD': '1',
\     'BEST': '2',
\     'NEAREST': '3',
\     'BILINEAR': '4',
\     'GAUSSIAN': '5',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoFontFace': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoFontOptions': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'equal': { 'signature': 'string $other | bool', 'return_type': 'bool'},
\     'getAntialias': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHintMetrics': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHintStyle': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSubpixelOrder': { 'signature': 'void | int', 'return_type': 'int'},
\     'hash': { 'signature': 'void | int', 'return_type': 'int'},
\     'merge': { 'signature': 'string $other | void', 'return_type': 'void'},
\     'setAntialias': { 'signature': 'string $antialias | void', 'return_type': 'void'},
\     'setHintMetrics': { 'signature': 'string $hint_metrics | void', 'return_type': 'void'},
\     'setHintStyle': { 'signature': 'string $hint_style | void', 'return_type': 'void'},
\     'setSubpixelOrder': { 'signature': 'string $subpixel_order | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoFontSlant': {
\   'constants': {
\     'NORMAL': '0',
\     'ITALIC': '1',
\     'OBLIQUE': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoFontType': {
\   'constants': {
\     'TOY': '0',
\     'FT': '1',
\     'WIN32': '2',
\     'QUARTZ': '3',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoFontWeight': {
\   'constants': {
\     'NORMAL': '0',
\     'BOLD': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoFormat': {
\   'constants': {
\     'ARGB32': '0',
\     'RGB24': '1',
\     'A8': '2',
\     'A1': '3',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\     'strideForWidth': { 'signature': 'int $format, int $width | int', 'return_type': 'int'},
\   },
\},
\'CairoGradientPattern': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addColorStopRgb': { 'signature': 'string $offset, string $red, string $green, string $blue | void', 'return_type': 'void'},
\     'addColorStopRgba': { 'signature': 'string $offset, string $red, string $green, string $blue, string $alpha | void', 'return_type': 'void'},
\     'getColorStopCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorStopRgba': { 'signature': 'string $index | array', 'return_type': 'array'},
\     'getExtend': { 'signature': 'void | int', 'return_type': 'int'},
\     'setExtend': { 'signature': 'int $extend | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoHintMetrics': {
\   'constants': {
\     'METRICS_DEFAULT': '0',
\     'METRICS_OFF': '1',
\     'METRICS_ON': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoHintStyle': {
\   'constants': {
\     'STYLE_DEFAULT': '0',
\     'STYLE_NONE': '1',
\     'STYLE_SLIGHT': '2',
\     'STYLE_MEDIUM': '3',
\     'STYLE_FULL': '4',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoImageSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getData': { 'signature': 'void | string', 'return_type': 'string'},
\     'getFormat': { 'signature': 'void | int', 'return_type': 'int'},
\     'getHeight': { 'signature': 'void | int', 'return_type': 'int'},
\     'getStride': { 'signature': 'void | int', 'return_type': 'int'},
\     'getWidth': { 'signature': 'void | int', 'return_type': 'int'},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'createForData': { 'signature': 'string $data, int $format, int $width, int $height [, int $stride = -1] | void', 'return_type': 'void'},
\     'createFromPng': { 'signature': 'string $file | CairoImageSurface', 'return_type': 'CairoImageSurface'},
\   },
\},
\'CairoLinearGradient': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'float $x0, float $y0, float $x1, float $y1', 'return_type': ''},
\     'getPoints': { 'signature': 'void | array', 'return_type': 'array'},
\     'addColorStopRgb': { 'signature': 'string $offset, string $red, string $green, string $blue | void', 'return_type': 'void'},
\     'addColorStopRgba': { 'signature': 'string $offset, string $red, string $green, string $blue, string $alpha | void', 'return_type': 'void'},
\     'getColorStopCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorStopRgba': { 'signature': 'string $index | array', 'return_type': 'array'},
\     'getExtend': { 'signature': 'void | int', 'return_type': 'int'},
\     'setExtend': { 'signature': 'int $extend | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CairoLineCap': {
\   'constants': {
\     'BUTT': '0',
\     'ROUND': '1',
\     'SQUARE': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoLineJoin': {
\   'constants': {
\     'MITER': '0',
\     'ROUND': '1',
\     'BEVEL': '2',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoMatrix': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ float $xx = 1.0 [, float $yx = 0.0 [, float $xy = 0.0 [, float $yy = 1.0 [, float $x0 = 0.0 [, float $y0 = 0.0]]]]]]', 'return_type': ''},
\     'invert': { 'signature': 'void | void', 'return_type': 'void'},
\     'rotate': { 'signature': 'string $sx, string $sy | void', 'return_type': 'void'},
\     'scale': { 'signature': 'float $sx, float $sy | void', 'return_type': 'void'},
\     'transformDistance': { 'signature': 'string $dx, string $dy | array', 'return_type': 'array'},
\     'transformPoint': { 'signature': 'string $dx, string $dy | array', 'return_type': 'array'},
\     'translate': { 'signature': 'string $tx, string $ty | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'initIdentity': { 'signature': 'void | void', 'return_type': 'void'},
\     'initRotate': { 'signature': 'float $radians | void', 'return_type': 'void'},
\     'initScale': { 'signature': 'float $sx, float $sy | void', 'return_type': 'void'},
\     'initTranslate': { 'signature': 'float $tx, float $ty | void', 'return_type': 'void'},
\     'multiply': { 'signature': 'CairoMatrix $matrix1, CairoMatrix $matrix2 | CairoMatrix', 'return_type': 'CairoMatrix'},
\   },
\},
\'CairoOperator': {
\   'constants': {
\     'CLEAR': '0',
\     'SOURCE': '1',
\     'OVER': '2',
\     'IN': '3',
\     'OUT': '4',
\     'ATOP': '5',
\     'DEST': '6',
\     'DEST_OVER': '7',
\     'DEST_IN': '8',
\     'DEST_OUT': '9',
\     'DEST_ATOP': '10',
\     'XOR': '11',
\     'ADD': '12',
\     'SATURATE': '13',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoPath': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoPattern': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoPatternType': {
\   'constants': {
\     'SOLID': '0',
\     'SURFACE': '1',
\     'LINEAR': '2',
\     'RADIAL': '3',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoPdfSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'setSize': { 'signature': 'string $width, string $height | void', 'return_type': 'void'},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CairoPsLevel': {
\   'constants': {
\     'LEVEL_2': '0',
\     'LEVEL_3': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoPsSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'dscBeginPageSetup': { 'signature': 'void | void', 'return_type': 'void'},
\     'dscBeginSetup': { 'signature': 'void | void', 'return_type': 'void'},
\     'dscComment': { 'signature': 'string $comment | void', 'return_type': 'void'},
\     'getEps': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'restrictToLevel': { 'signature': 'string $level | void', 'return_type': 'void'},
\     'setEps': { 'signature': 'string $level | void', 'return_type': 'void'},
\     'setSize': { 'signature': 'string $width, string $height | void', 'return_type': 'void'},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getLevels': { 'signature': 'void | array', 'return_type': 'array'},
\     'levelToString': { 'signature': 'int $level | string', 'return_type': 'string'},
\   },
\},
\'CairoRadialGradient': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'float $x0, float $y0, float $r0, float $x1, float $y1, float $r1', 'return_type': ''},
\     'getCircles': { 'signature': 'void | array', 'return_type': 'array'},
\     'addColorStopRgb': { 'signature': 'string $offset, string $red, string $green, string $blue | void', 'return_type': 'void'},
\     'addColorStopRgba': { 'signature': 'string $offset, string $red, string $green, string $blue, string $alpha | void', 'return_type': 'void'},
\     'getColorStopCount': { 'signature': 'void | int', 'return_type': 'int'},
\     'getColorStopRgba': { 'signature': 'string $index | array', 'return_type': 'array'},
\     'getExtend': { 'signature': 'void | int', 'return_type': 'int'},
\     'setExtend': { 'signature': 'int $extend | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CairoScaledFont': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'CairoFontFace $font_face, CairoMatrix $matrix, CairoMatrix $ctm, CairoFontOptions $options', 'return_type': ''},
\     'extents': { 'signature': 'void | array', 'return_type': 'array'},
\     'getCtm': { 'signature': 'void | CairoMatrix', 'return_type': 'CairoMatrix'},
\     'getFontFace': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFontMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getScaleMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'glyphExtents': { 'signature': 'string $glyphs | array', 'return_type': 'array'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'textExtents': { 'signature': 'string $text | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'CairoSolidPattern': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getRgba': { 'signature': 'void | array', 'return_type': 'array'},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoStatus': {
\   'constants': {
\     'SUCCESS': '0',
\     'NO_MEMORY': '1',
\     'INVALID_RESTORE': '2',
\     'INVALID_POP_GROUP': '3',
\     'NO_CURRENT_POINT': '4',
\     'INVALID_MATRIX': '5',
\     'INVALID_STATUS': '6',
\     'NULL_POINTER': '7',
\     'INVALID_STRING': '8',
\     'INVALID_PATH_DATA': '9',
\     'READ_ERROR': '10',
\     'WRITE_ERROR': '11',
\     'SURFACE_FINISHED': '12',
\     'SURFACE_TYPE_MISMATCH': '13',
\     'PATTERN_TYPE_MISMATCH': '14',
\     'INVALID_CONTENT': '15',
\     'INVALID_FORMAT': '16',
\     'INVALID_VISUAL': '17',
\     'FILE_NOT_FOUND': '18',
\     'INVALID_DASH': '19',
\     'INVALID_DSC_COMMENT': '20',
\     'INVALID_INDEX': '21',
\     'CLIP_NOT_REPRESENTABLE': '22',
\     'TEMP_FILE_ERROR': '23',
\     'INVALID_STRIDE': '24',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoSubpixelOrder': {
\   'constants': {
\     'ORDER_DEFAULT': '0',
\     'ORDER_RGB': '1',
\     'ORDER_BGR': '2',
\     'ORDER_VRGB': '3',
\     'ORDER_VBGR': '4',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'CairoSurfacePattern': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getExtend': { 'signature': 'void | int', 'return_type': 'int'},
\     'getFilter': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSurface': { 'signature': 'void | void', 'return_type': 'void'},
\     'setExtend': { 'signature': 'int $extend | void', 'return_type': 'void'},
\     'setFilter': { 'signature': 'string $filter | void', 'return_type': 'void'},
\     'getMatrix': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'setMatrix': { 'signature': 'string $matrix | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\   },
\   'static_methods': {
\   },
\},
\'CairoSurfaceType': {
\   'constants': {
\     'IMAGE': '0',
\     'PDF': '1',
\     'PS': '2',
\     'XLIB': '3',
\     'XCB': '4',
\     'GLITZ': '5',
\     'QUARTZ': '6',
\     'WIN32': '7',
\     'BEOS': '8',
\     'DIRECTFB': '9',
\     'SVG': '10',
\     'OS2': '11',
\     'WIN32_PRINTING': '12',
\     'QUARTZ_IMAGE': '13',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoSvgSurface': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'restrictToVersion': { 'signature': 'string $version | void', 'return_type': 'void'},
\     'copyPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'createSimilar': { 'signature': 'CairoSurface $other, int $content, string $width, string $height | void', 'return_type': 'void'},
\     'finish': { 'signature': 'void | void', 'return_type': 'void'},
\     'flush': { 'signature': 'void | void', 'return_type': 'void'},
\     'getContent': { 'signature': 'void | int', 'return_type': 'int'},
\     'getDeviceOffset': { 'signature': 'void | array', 'return_type': 'array'},
\     'getFontOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'markDirty': { 'signature': 'void | void', 'return_type': 'void'},
\     'markDirtyRectangle': { 'signature': 'string $x, string $y, string $width, string $height | void', 'return_type': 'void'},
\     'setDeviceOffset': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'setFallbackResolution': { 'signature': 'string $x, string $y | void', 'return_type': 'void'},
\     'showPage': { 'signature': 'void | void', 'return_type': 'void'},
\     'status': { 'signature': 'void | int', 'return_type': 'int'},
\     'writeToPng': { 'signature': 'string $file | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getVersions': { 'signature': 'void | array', 'return_type': 'array'},
\     'versionToString': { 'signature': 'int $version | string', 'return_type': 'string'},
\   },
\},
\'CairoSvgVersion': {
\   'constants': {
\     'VERSION_1_1': '0',
\     'VERSION_1_2': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\'CairoToyFontFace': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\   },
\   'static_methods': {
\   },
\},
\})
