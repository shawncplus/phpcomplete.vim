call extend(g:php_builtin_classes, {
\'KTaglib_ID3v2_Frame': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getDescription': { 'signature': 'void | string', 'return_type': 'string'},
\     'getMimeType': { 'signature': 'string $type | string', 'return_type': 'string'},
\     'getType': { 'signature': 'void | int', 'return_type': 'int'},
\     'savePicture': { 'signature': 'string $filename | bool', 'return_type': 'bool'},
\     'setPicture': { 'signature': 'string $filename | void', 'return_type': 'void'},
\     'setType': { 'signature': 'int $type | void', 'return_type': 'void'},
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'getAlbum': { 'signature': 'void | string', 'return_type': 'string'},
\     'getArtist': { 'signature': 'void | string', 'return_type': 'string'},
\     'getComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGenre': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTitle': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTrack': { 'signature': 'void | int', 'return_type': 'int'},
\     'getYear': { 'signature': 'void | int', 'return_type': 'int'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'KTaglib_Tag': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getSize': { 'signature': 'void | int', 'return_type': 'int'},
\     '__toString': { 'signature': 'void | string', 'return_type': 'string'},
\     'getAlbum': { 'signature': 'void | string', 'return_type': 'string'},
\     'getArtist': { 'signature': 'void | string', 'return_type': 'string'},
\     'getComment': { 'signature': 'void | string', 'return_type': 'string'},
\     'getGenre': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTitle': { 'signature': 'void | string', 'return_type': 'string'},
\     'getTrack': { 'signature': 'void | int', 'return_type': 'int'},
\     'getYear': { 'signature': 'void | int', 'return_type': 'int'},
\     'isEmpty': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'KTaglib_MPEG_AudioProperties': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getBitrate': { 'signature': 'void | int', 'return_type': 'int'},
\     'getChannels': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLayer': { 'signature': 'void | int', 'return_type': 'int'},
\     'getLength': { 'signature': 'void | int', 'return_type': 'int'},
\     'getSampleBitrate': { 'signature': 'void | int', 'return_type': 'int'},
\     'getVersion': { 'signature': 'void | int', 'return_type': 'int'},
\     'isCopyrighted': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isOriginal': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'isProtectionEnabled': { 'signature': 'void | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'KTaglib_MPEG_File': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getAudioProperties': { 'signature': 'void | KTaglib_MPEG_File', 'return_type': 'KTaglib_MPEG_File'},
\     'getID3v1Tag': { 'signature': '[ bool $create = false] | KTaglib_ID3v1_Tag', 'return_type': 'KTaglib_ID3v1_Tag'},
\     'getID3v2Tag': { 'signature': '[ bool $create = false] | KTaglib_ID3v2_Tag', 'return_type': 'KTaglib_ID3v2_Tag'},
\   },
\   'static_methods': {
\   },
\},
\})
