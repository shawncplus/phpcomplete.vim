call extend(g:php_builtin_classes, {
\'dateinterval': {
\   'name': 'DateInterval',
\   'constants': {
\   },
\   'properties': {
\     'y': { 'initializer': '', 'type': 'integer'},
\     'm': { 'initializer': '', 'type': 'integer'},
\     'd': { 'initializer': '', 'type': 'integer'},
\     'h': { 'initializer': '', 'type': 'integer'},
\     'i': { 'initializer': '', 'type': 'integer'},
\     's': { 'initializer': '', 'type': 'integer'},
\     'invert': { 'initializer': '', 'type': 'integer'},
\     'days': { 'initializer': '', 'type': 'mixed'},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $interval_spec', 'return_type': ''},
\     'format': { 'signature': 'string $format | string', 'return_type': 'string'},
\   },
\   'static_methods': {
\     'createFromDateString': { 'signature': 'string $time | DateInterval', 'return_type': 'DateInterval'},
\   },
\},
\'dateperiod': {
\   'name': 'DatePeriod',
\   'constants': {
\     'EXCLUDE_START_DATE': '1',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $isostr [, int $options]', 'return_type': ''},
\   },
\   'static_methods': {
\   },
\},
\'datetime': {
\   'name': 'DateTime',
\   'constants': {
\     'ATOM': '"Y-m-d\TH:i:sP"',
\     'COOKIE': '"l, d-M-y H:i:s T"',
\     'ISO8601': '"Y-m-d\TH:i:sO"',
\     'RFC822': '"D, d M y H:i:s O"',
\     'RFC850': '"l, d-M-y H:i:s T"',
\     'RFC1036': '"D, d M y H:i:s O"',
\     'RFC1123': '"D, d M Y H:i:s O"',
\     'RFC2822': '"D, d M Y H:i:s O"',
\     'RFC3339': '"Y-m-d\TH:i:sP"',
\     'RSS': '"D, d M Y H:i:s O"',
\     'W3C': '"Y-m-d\TH:i:sP"',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $time = "now" [, DateTimeZone $timezone = NULL]]', 'return_type': ''},
\     'add': { 'signature': 'DateInterval $interval | DateTime', 'return_type': 'DateTime'},
\     'modify': { 'signature': 'string $modify | DateTime', 'return_type': 'DateTime'},
\     'setDate': { 'signature': 'int $year, int $month, int $day | DateTime', 'return_type': 'DateTime'},
\     'setISODate': { 'signature': 'int $year, int $week [, int $day = 1] | DateTime', 'return_type': 'DateTime'},
\     'setTime': { 'signature': 'int $hour, int $minute [, int $second = 0] | DateTime', 'return_type': 'DateTime'},
\     'setTimestamp': { 'signature': 'int $unixtimestamp | DateTime', 'return_type': 'DateTime'},
\     'setTimezone': { 'signature': 'DateTimeZone $timezone | DateTime', 'return_type': 'DateTime'},
\     'sub': { 'signature': 'DateInterval $interval | DateTime', 'return_type': 'DateTime'},
\     'diff': { 'signature': 'DateTimeInterface $datetime2 [, bool $absolute = false] | DateInterval', 'return_type': 'DateInterval'},
\     'format': { 'signature': 'string $format | string', 'return_type': 'string'},
\     'getOffset': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimestamp': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimezone': { 'signature': 'void | DateTimeZone', 'return_type': 'DateTimeZone'},
\     '__wakeup': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\     'createFromFormat': { 'signature': 'string $format, string $time [, DateTimeZone $timezone] | DateTime', 'return_type': 'DateTime'},
\     'getLastErrors': { 'signature': 'void | array', 'return_type': 'array'},
\     '__set_state': { 'signature': 'array $array | DateTime', 'return_type': 'DateTime'},
\   },
\},
\'datetimeimmutable': {
\   'name': 'DateTimeImmutable',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $time = "now" [, DateTimeZone $timezone = NULL]]', 'return_type': ''},
\     'add': { 'signature': 'DateInterval $interval | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'modify': { 'signature': 'string $modify | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'setDate': { 'signature': 'int $year, int $month, int $day | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'setISODate': { 'signature': 'int $year, int $week [, int $day = 1] | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'setTime': { 'signature': 'int $hour, int $minute [, int $second = 0] | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'setTimestamp': { 'signature': 'int $unixtimestamp | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'setTimezone': { 'signature': 'DateTimeZone $timezone | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'sub': { 'signature': 'DateInterval $interval | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'diff': { 'signature': 'DateTimeInterface $datetime2 [, bool $absolute = false] | DateInterval', 'return_type': 'DateInterval'},
\     'format': { 'signature': 'string $format | string', 'return_type': 'string'},
\     'getOffset': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimestamp': { 'signature': 'void | int', 'return_type': 'int'},
\     'getTimezone': { 'signature': 'void | DateTimeZone', 'return_type': 'DateTimeZone'},
\     '__wakeup': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\     'createFromFormat': { 'signature': 'string $format, string $time [, DateTimeZone $timezone] | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\     'getLastErrors': { 'signature': 'void | array', 'return_type': 'array'},
\     '__set_state': { 'signature': 'array $array | DateTimeImmutable', 'return_type': 'DateTimeImmutable'},
\   },
\},
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
\'datetimezone': {
\   'name': 'DateTimeZone',
\   'constants': {
\     'AFRICA': '1',
\     'AMERICA': '2',
\     'ANTARCTICA': '4',
\     'ARCTIC': '8',
\     'ASIA': '16',
\     'ATLANTIC': '32',
\     'AUSTRALIA': '64',
\     'EUROPE': '128',
\     'INDIAN': '256',
\     'PACIFIC': '512',
\     'UTC': '1024',
\     'ALL': '2047',
\     'ALL_WITH_BC': '4095',
\     'PER_COUNTRY': '4096',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $timezone', 'return_type': ''},
\     'getLocation': { 'signature': 'void | array', 'return_type': 'array'},
\     'getName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getOffset': { 'signature': 'DateTime $datetime | int', 'return_type': 'int'},
\     'getTransitions': { 'signature': '[ int $timestamp_begin [, int $timestamp_end]] | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\     'listAbbreviations': { 'signature': 'void | array', 'return_type': 'array'},
\     'listIdentifiers': { 'signature': '[ int $what = DateTimeZone::ALL [, string $country = NULL]] | array', 'return_type': 'array'},
\   },
\},
\})
