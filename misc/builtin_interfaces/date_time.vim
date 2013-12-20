call extend(g:php_builtin_interfaces, {
\'datetimeinterface': {
\   'name': 'DateTimeInterface',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'diff': { 'signature': 'DateTimeInterface $datetime2 [, bool $absolute = false] | DateInterval', 'return_type': 'DateInterval'},
\     'format': { 'signature': 'string $format | string', 'return_type': 'string'},
\     'getOffset': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimestamp': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimezone': { 'signature': 'void | DateTimeZone', 'return_type': 'DateTimeZone'},
\     '__wakeup': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\})
