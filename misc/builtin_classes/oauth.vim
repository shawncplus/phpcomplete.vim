call extend(g:php_builtin_classes, {
\'OAuth': {
\   'constants': {
\   },
\   'properties': {
\     'debug': { 'initializer': '', 'type': ''},
\     'sslChecks': { 'initializer': '', 'type': ''},
\     'debugInfo': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $consumer_key, string $consumer_secret [, string $signature_method = OAUTH_SIG_METHOD_HMACSHA1 [, int $auth_type = 0]]', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'disableDebug': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'disableRedirects': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'disableSSLChecks': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'enableDebug': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'enableRedirects': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'enableSSLChecks': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'fetch': { 'signature': 'string $protected_resource_url [, array $extra_parameters [, string $http_method [, array $http_headers]]] | mixed', 'return_type': 'mixed'},
\     'generateSignature': { 'signature': 'string $http_method, string $url [, mixed $extra_parameters] | string', 'return_type': 'string'},
\     'getAccessToken': { 'signature': 'string $access_token_url [, string $auth_session_handle [, string $verifier_token]] | array', 'return_type': 'array'},
\     'getCAPath': { 'signature': 'void | array', 'return_type': 'array'},
\     'getLastResponse': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLastResponseHeaders': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLastResponseInfo': { 'signature': 'void | array', 'return_type': 'array'},
\     'getRequestHeader': { 'signature': 'string $http_method, string $url [, mixed $extra_parameters] | string', 'return_type': 'string'},
\     'getRequestToken': { 'signature': 'string $request_token_url [, string $callback_url] | array', 'return_type': 'array'},
\     'setAuthType': { 'signature': 'int $auth_type | mixed', 'return_type': 'mixed'},
\     'setCAPath': { 'signature': '[ string $ca_path [, string $ca_info]] | mixed', 'return_type': 'mixed'},
\     'setNonce': { 'signature': 'string $nonce | mixed', 'return_type': 'mixed'},
\     'setRequestEngine': { 'signature': 'int $reqengine | void', 'return_type': 'void'},
\     'setRSACertificate': { 'signature': 'string $cert | mixed', 'return_type': 'mixed'},
\     'setSSLChecks': { 'signature': 'int $sslcheck | bool', 'return_type': 'bool'},
\     'setTimestamp': { 'signature': 'string $timestamp | mixed', 'return_type': 'mixed'},
\     'setToken': { 'signature': 'string $token, string $token_secret | bool', 'return_type': 'bool'},
\     'setVersion': { 'signature': 'string $version | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'OAuthException': {
\   'constants': {
\   },
\   'properties': {
\     'lastResponse': { 'initializer': '', 'type': ''},
\     'debugInfo': { 'initializer': '', 'type': ''},
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
\'OAuthProvider': {
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addRequiredParameter': { 'signature': 'string $req_params | bool', 'return_type': 'bool'},
\     'callconsumerHandler': { 'signature': 'void | void', 'return_type': 'void'},
\     'callTimestampNonceHandler': { 'signature': 'void | void', 'return_type': 'void'},
\     'calltokenHandler': { 'signature': 'void | void', 'return_type': 'void'},
\     'checkOAuthRequest': { 'signature': '[ string $uri [, string $method]] | void', 'return_type': 'void'},
\     '__construct': { 'signature': '[ array $params_array]', 'return_type': ''},
\     'consumerHandler': { 'signature': 'callable $callback_function | void', 'return_type': 'void'},
\     'is2LeggedEndpoint': { 'signature': 'mixed $params_array | void', 'return_type': 'void'},
\     'isRequestTokenEndpoint': { 'signature': 'bool $will_issue_request_token | void', 'return_type': 'void'},
\     'removeRequiredParameter': { 'signature': 'string $req_params | bool', 'return_type': 'bool'},
\     'setParam': { 'signature': 'string $param_key [, mixed $param_val] | bool', 'return_type': 'bool'},
\     'setRequestTokenPath': { 'signature': 'string $path | bool', 'return_type': 'bool'},
\     'timestampNonceHandler': { 'signature': 'callable $callback_function | void', 'return_type': 'void'},
\     'tokenHandler': { 'signature': 'callable $callback_function | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'generateToken': { 'signature': 'int $size [, bool $strong = false] | string', 'return_type': 'string'},
\     'reportProblem': { 'signature': 'string $oauthexception [, bool $send_headers = true] | string', 'return_type': 'string'},
\   },
\},
\})
