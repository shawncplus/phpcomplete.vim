call extend(g:php_builtin_classes, {
\'yaf_action_abstract': {
\   'name': 'Yaf_Action_Abstract',
\   'constants': {
\   },
\   'properties': {
\     '_controller': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'execute': { 'signature': '[ mixed $arg [, mixed $...]] | mixed', 'return_type': 'mixed'},
\     'getController': { 'signature': 'void | Yaf_Controller_Abstract', 'return_type': 'Yaf_Controller_Abstract'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'display': { 'signature': 'string $tpl [, array $parameters] | bool', 'return_type': 'bool'},
\     'forward': { 'signature': 'string $action [, array $paramters] | void', 'return_type': 'void'},
\     'getInvokeArg': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'getInvokeArgs': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequest': { 'signature': 'void | Yaf_Request_Abstract', 'return_type': 'Yaf_Request_Abstract'},
\     'getResponse': { 'signature': 'void | Yaf_Response_Abstract', 'return_type': 'Yaf_Response_Abstract'},
\     'getView': { 'signature': 'void | Yaf_View_Interface', 'return_type': 'Yaf_View_Interface'},
\     'getViewpath': { 'signature': 'void | void', 'return_type': 'void'},
\     'init': { 'signature': 'void | void', 'return_type': 'void'},
\     'initView': { 'signature': '[ array $options] | void', 'return_type': 'void'},
\     'redirect': { 'signature': 'string $url | bool', 'return_type': 'bool'},
\     'render': { 'signature': 'string $tpl [, array $parameters] | string', 'return_type': 'string'},
\     'setViewpath': { 'signature': 'string $view_directory | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_application': {
\   'name': 'Yaf_Application',
\   'constants': {
\   },
\   'properties': {
\     'config': { 'initializer': '', 'type': ''},
\     'dispatcher': { 'initializer': '', 'type': ''},
\     '_modules': { 'initializer': '', 'type': ''},
\     '_running': { 'initializer': '', 'type': ''},
\     '_environ': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_app': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     'bootstrap': { 'signature': '[ Yaf_Bootstrap_Abstract $bootstrap] | void', 'return_type': 'void'},
\     'clearLastError': { 'signature': 'void | Yaf_Application', 'return_type': 'Yaf_Application'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'mixed $config [, string $envrion]', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'environ': { 'signature': 'void | void', 'return_type': 'void'},
\     'execute': { 'signature': 'callable $entry, string $... | void', 'return_type': 'void'},
\     'getAppDirectory': { 'signature': 'void | Yaf_Application', 'return_type': 'Yaf_Application'},
\     'getConfig': { 'signature': 'void | Yaf_Config_Abstract', 'return_type': 'Yaf_Config_Abstract'},
\     'getDispatcher': { 'signature': 'void | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'getLastErrorMsg': { 'signature': 'void | string', 'return_type': 'string'},
\     'getLastErrorNo': { 'signature': 'void | int', 'return_type': 'int'},
\     'getModules': { 'signature': 'void | array', 'return_type': 'array'},
\     'run': { 'signature': 'void | void', 'return_type': 'void'},
\     'setAppDirectory': { 'signature': 'string $directory | Yaf_Application', 'return_type': 'Yaf_Application'},
\     '__sleep': { 'signature': 'void | void', 'return_type': 'void'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'app': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'yaf_bootstrap_abstract': {
\   'name': 'Yaf_Bootstrap_Abstract',
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
\'yaf_config_abstract': {
\   'name': 'Yaf_Config_Abstract',
\   'constants': {
\   },
\   'properties': {
\     '_config': { 'initializer': '', 'type': ''},
\     '_readonly': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'get': { 'signature': 'string $name, mixed $value | mixed', 'return_type': 'mixed'},
\     'readonly': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'set': { 'signature': 'void | Yaf_Config_Abstract', 'return_type': 'Yaf_Config_Abstract'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_config_ini': {
\   'name': 'Yaf_Config_Ini',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $config_file [, string $section]', 'return_type': ''},
\     'count': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     '__get': { 'signature': '[ string $name] | void', 'return_type': 'void'},
\     '__isset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetSet': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'readonly': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     '__set': { 'signature': 'string $name, mixed $value | void', 'return_type': 'void'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\     'get': { 'signature': 'string $name, mixed $value | mixed', 'return_type': 'mixed'},
\     'set': { 'signature': 'void | Yaf_Config_Abstract', 'return_type': 'Yaf_Config_Abstract'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_config_simple': {
\   'name': 'Yaf_Config_Simple',
\   'constants': {
\   },
\   'properties': {
\     '_readonly': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $config_file [, string $section]', 'return_type': ''},
\     'count': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     '__get': { 'signature': '[ string $name] | void', 'return_type': 'void'},
\     '__isset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetSet': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'readonly': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     '__set': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'toArray': { 'signature': 'void | array', 'return_type': 'array'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\     'get': { 'signature': 'string $name, mixed $value | mixed', 'return_type': 'mixed'},
\     'set': { 'signature': 'void | Yaf_Config_Abstract', 'return_type': 'Yaf_Config_Abstract'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_controller_abstract': {
\   'name': 'Yaf_Controller_Abstract',
\   'constants': {
\   },
\   'properties': {
\     'actions': { 'initializer': '', 'type': ''},
\     '_module': { 'initializer': '', 'type': ''},
\     '_name': { 'initializer': '', 'type': ''},
\     '_request': { 'initializer': '', 'type': ''},
\     '_response': { 'initializer': '', 'type': ''},
\     '_invoke_args': { 'initializer': '', 'type': ''},
\     '_view': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'display': { 'signature': 'string $tpl [, array $parameters] | bool', 'return_type': 'bool'},
\     'forward': { 'signature': 'string $action [, array $paramters] | void', 'return_type': 'void'},
\     'getInvokeArg': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'getInvokeArgs': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRequest': { 'signature': 'void | Yaf_Request_Abstract', 'return_type': 'Yaf_Request_Abstract'},
\     'getResponse': { 'signature': 'void | Yaf_Response_Abstract', 'return_type': 'Yaf_Response_Abstract'},
\     'getView': { 'signature': 'void | Yaf_View_Interface', 'return_type': 'Yaf_View_Interface'},
\     'getViewpath': { 'signature': 'void | void', 'return_type': 'void'},
\     'init': { 'signature': 'void | void', 'return_type': 'void'},
\     'initView': { 'signature': '[ array $options] | void', 'return_type': 'void'},
\     'redirect': { 'signature': 'string $url | bool', 'return_type': 'bool'},
\     'render': { 'signature': 'string $tpl [, array $parameters] | string', 'return_type': 'string'},
\     'setViewpath': { 'signature': 'string $view_directory | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_dispatcher': {
\   'name': 'Yaf_Dispatcher',
\   'constants': {
\   },
\   'properties': {
\     '_router': { 'initializer': '', 'type': ''},
\     '_view': { 'initializer': '', 'type': ''},
\     '_request': { 'initializer': '', 'type': ''},
\     '_plugins': { 'initializer': '', 'type': ''},
\     '_auto_render': { 'initializer': '', 'type': ''},
\     '_return_response': { 'initializer': '', 'type': ''},
\     '_instantly_flush': { 'initializer': '', 'type': ''},
\     '_default_module': { 'initializer': '', 'type': ''},
\     '_default_controller': { 'initializer': '', 'type': ''},
\     '_default_action': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_instance': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     'autoRender': { 'signature': '[ bool $flag] | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'catchException': { 'signature': '[ bool $flag] | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'disableView': { 'signature': 'void | bool', 'return_type': 'bool'},
\     'dispatch': { 'signature': 'Yaf_Request_Abstract $request | Yaf_Response_Abstract', 'return_type': 'Yaf_Response_Abstract'},
\     'enableView': { 'signature': 'void | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'flushInstantly': { 'signature': '[ bool $flag] | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'getApplication': { 'signature': 'void | Yaf_Application', 'return_type': 'Yaf_Application'},
\     'getRequest': { 'signature': 'void | Yaf_Request_Abstract', 'return_type': 'Yaf_Request_Abstract'},
\     'getRouter': { 'signature': 'void | Yaf_Router', 'return_type': 'Yaf_Router'},
\     'initView': { 'signature': 'string $templates_dir [, array $options] | Yaf_View_Interface', 'return_type': 'Yaf_View_Interface'},
\     'registerPlugin': { 'signature': 'Yaf_Plugin_Abstract $plugin | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'returnResponse': { 'signature': 'bool $flag | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setDefaultAction': { 'signature': 'string $action | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setDefaultController': { 'signature': 'string $controller | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setDefaultModule': { 'signature': 'string $module | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setErrorHandler': { 'signature': 'call $callback, int $error_types | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setRequest': { 'signature': 'Yaf_Request_Abstract $request | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     'setView': { 'signature': 'Yaf_View_Interface $view | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     '__sleep': { 'signature': 'void | void', 'return_type': 'void'},
\     'throwException': { 'signature': '[ bool $flag] | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getInstance': { 'signature': 'void | Yaf_Dispatcher', 'return_type': 'Yaf_Dispatcher'},
\   },
\},
\'yaf_exception_dispatchfailed': {
\   'name': 'Yaf_Exception_DispatchFailed',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception_loadfailed_action': {
\   'name': 'Yaf_Exception_LoadFailed_Action',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception_loadfailed_controller': {
\   'name': 'Yaf_Exception_LoadFailed_Controller',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception_loadfailed_module': {
\   'name': 'Yaf_Exception_LoadFailed_Module',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception_loadfailed_view': {
\   'name': 'Yaf_Exception_LoadFailed_View',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception_loadfailed': {
\   'name': 'Yaf_Exception_LoadFailed',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception_routerfailed': {
\   'name': 'Yaf_Exception_RouterFailed',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception_startuperror': {
\   'name': 'Yaf_Exception_StartupError',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception_typeerror': {
\   'name': 'Yaf_Exception_TypeError',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_exception': {
\   'name': 'Yaf_Exception',
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
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getPrevious': { 'signature': 'void | Exception', 'return_type': 'Exception'},
\     'getMessage': { 'signature': 'void | string', 'return_type': 'string'},
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
\'yaf_loader': {
\   'name': 'Yaf_Loader',
\   'constants': {
\   },
\   'properties': {
\     '_local_ns': { 'initializer': '', 'type': ''},
\     '_library': { 'initializer': '', 'type': ''},
\     '_global_library': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_instance': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     'autoload': { 'signature': 'void | void', 'return_type': 'void'},
\     'clearLocalNamespace': { 'signature': 'void | void', 'return_type': 'void'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getLibraryPath': { 'signature': '[ bool $is_global = false] | Yaf_Loader', 'return_type': 'Yaf_Loader'},
\     'getLocalNamespace': { 'signature': 'void | void', 'return_type': 'void'},
\     'isLocalName': { 'signature': 'void | void', 'return_type': 'void'},
\     'registerLocalNamespace': { 'signature': 'mixed $prefix | void', 'return_type': 'void'},
\     'setLibraryPath': { 'signature': 'string $directory [, bool $is_global = false] | Yaf_Loader', 'return_type': 'Yaf_Loader'},
\     '__sleep': { 'signature': 'void | void', 'return_type': 'void'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getInstance': { 'signature': 'void | void', 'return_type': 'void'},
\     'import': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'yaf_plugin_abstract': {
\   'name': 'Yaf_Plugin_Abstract',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'dispatchLoopShutdown': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'dispatchLoopStartup': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'postDispatch': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'preDispatch': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'preResponse': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'routerShutdown': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\     'routerStartup': { 'signature': 'Yaf_Request_Abstract $request, Yaf_Response_Abstract $response | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_registry': {
\   'name': 'Yaf_Registry',
\   'constants': {
\   },
\   'properties': {
\     '_entries': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_instance': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\   },
\   'static_methods': {
\     'del': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'get': { 'signature': 'string $name | mixed', 'return_type': 'mixed'},
\     'has': { 'signature': 'string $name | bool', 'return_type': 'bool'},
\     'set': { 'signature': 'string $name, string $value | bool', 'return_type': 'bool'},
\   },
\},
\'yaf_request_abstract': {
\   'name': 'Yaf_Request_Abstract',
\   'constants': {
\     'SCHEME_HTTP': 'http',
\     'SCHEME_HTTPS': 'https',
\   },
\   'properties': {
\     'module': { 'initializer': '', 'type': ''},
\     'controller': { 'initializer': '', 'type': ''},
\     'action': { 'initializer': '', 'type': ''},
\     'method': { 'initializer': '', 'type': ''},
\     'params': { 'initializer': '', 'type': ''},
\     'language': { 'initializer': '', 'type': ''},
\     '_exception': { 'initializer': '', 'type': ''},
\     '_base_uri': { 'initializer': '', 'type': ''},
\     'uri': { 'initializer': '', 'type': ''},
\     'dispatched': { 'initializer': '', 'type': ''},
\     'routed': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'getActionName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBaseUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getControllerName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getEnv': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getException': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLanguage': { 'signature': 'void | void', 'return_type': 'void'},
\     'getMethod': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getParam': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getParams': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRequestUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getServer': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'isCli': { 'signature': 'void | void', 'return_type': 'void'},
\     'isDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'isGet': { 'signature': 'void | void', 'return_type': 'void'},
\     'isHead': { 'signature': 'void | void', 'return_type': 'void'},
\     'isOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPost': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPut': { 'signature': 'void | void', 'return_type': 'void'},
\     'isRouted': { 'signature': 'void | void', 'return_type': 'void'},
\     'isXmlHttpRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'setActionName': { 'signature': 'string $action | void', 'return_type': 'void'},
\     'setBaseUri': { 'signature': 'string $uir | bool', 'return_type': 'bool'},
\     'setControllerName': { 'signature': 'string $controller | void', 'return_type': 'void'},
\     'setDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'setModuleName': { 'signature': 'string $module | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name [, string $value] | void', 'return_type': 'void'},
\     'setRequestUri': { 'signature': 'string $uir | void', 'return_type': 'void'},
\     'setRouted': { 'signature': '[ string $flag] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_request_http': {
\   'name': 'Yaf_Request_Http',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'get': { 'signature': 'string $name [, string $default] | mixed', 'return_type': 'mixed'},
\     'getCookie': { 'signature': 'string $name [, string $default] | mixed', 'return_type': 'mixed'},
\     'getFiles': { 'signature': 'void | void', 'return_type': 'void'},
\     'getPost': { 'signature': 'string $name [, string $default] | mixed', 'return_type': 'mixed'},
\     'getQuery': { 'signature': 'string $name [, string $default] | mixed', 'return_type': 'mixed'},
\     'getRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'isXmlHttpRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'getActionName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBaseUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getControllerName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getEnv': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getException': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLanguage': { 'signature': 'void | void', 'return_type': 'void'},
\     'getMethod': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getParam': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getParams': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRequestUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getServer': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'isCli': { 'signature': 'void | void', 'return_type': 'void'},
\     'isDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'isGet': { 'signature': 'void | void', 'return_type': 'void'},
\     'isHead': { 'signature': 'void | void', 'return_type': 'void'},
\     'isOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPost': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPut': { 'signature': 'void | void', 'return_type': 'void'},
\     'isRouted': { 'signature': 'void | void', 'return_type': 'void'},
\     'setActionName': { 'signature': 'string $action | void', 'return_type': 'void'},
\     'setBaseUri': { 'signature': 'string $uir | bool', 'return_type': 'bool'},
\     'setControllerName': { 'signature': 'string $controller | void', 'return_type': 'void'},
\     'setDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'setModuleName': { 'signature': 'string $module | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name [, string $value] | void', 'return_type': 'void'},
\     'setRequestUri': { 'signature': 'string $uir | void', 'return_type': 'void'},
\     'setRouted': { 'signature': '[ string $flag] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_request_simple': {
\   'name': 'Yaf_Request_Simple',
\   'constants': {
\     'SCHEME_HTTP': 'http',
\     'SCHEME_HTTPS': 'https',
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'get': { 'signature': 'void | void', 'return_type': 'void'},
\     'getCookie': { 'signature': 'void | void', 'return_type': 'void'},
\     'getFiles': { 'signature': 'void | void', 'return_type': 'void'},
\     'getPost': { 'signature': 'void | void', 'return_type': 'void'},
\     'getQuery': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'isXmlHttpRequest': { 'signature': 'void | void', 'return_type': 'void'},
\     'getActionName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBaseUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getControllerName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getEnv': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getException': { 'signature': 'void | void', 'return_type': 'void'},
\     'getLanguage': { 'signature': 'void | void', 'return_type': 'void'},
\     'getMethod': { 'signature': 'void | void', 'return_type': 'void'},
\     'getModuleName': { 'signature': 'void | void', 'return_type': 'void'},
\     'getParam': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'getParams': { 'signature': 'void | void', 'return_type': 'void'},
\     'getRequestUri': { 'signature': 'void | void', 'return_type': 'void'},
\     'getServer': { 'signature': 'string $name [, string $default] | void', 'return_type': 'void'},
\     'isCli': { 'signature': 'void | void', 'return_type': 'void'},
\     'isDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'isGet': { 'signature': 'void | void', 'return_type': 'void'},
\     'isHead': { 'signature': 'void | void', 'return_type': 'void'},
\     'isOptions': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPost': { 'signature': 'void | void', 'return_type': 'void'},
\     'isPut': { 'signature': 'void | void', 'return_type': 'void'},
\     'isRouted': { 'signature': 'void | void', 'return_type': 'void'},
\     'setActionName': { 'signature': 'string $action | void', 'return_type': 'void'},
\     'setBaseUri': { 'signature': 'string $uir | bool', 'return_type': 'bool'},
\     'setControllerName': { 'signature': 'string $controller | void', 'return_type': 'void'},
\     'setDispatched': { 'signature': 'void | void', 'return_type': 'void'},
\     'setModuleName': { 'signature': 'string $module | void', 'return_type': 'void'},
\     'setParam': { 'signature': 'string $name [, string $value] | void', 'return_type': 'void'},
\     'setRequestUri': { 'signature': 'string $uir | void', 'return_type': 'void'},
\     'setRouted': { 'signature': '[ string $flag] | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_response_abstract': {
\   'name': 'Yaf_Response_Abstract',
\   'constants': {
\     'DEFAULT_BODY': '"content"',
\   },
\   'properties': {
\     '_header': { 'initializer': '', 'type': ''},
\     '_body': { 'initializer': '', 'type': ''},
\     '_sendheader': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'appendBody': { 'signature': 'string $content [, string $key] | bool', 'return_type': 'bool'},
\     'clearBody': { 'signature': '[ string $key] | bool', 'return_type': 'bool'},
\     'clearHeaders': { 'signature': 'void | void', 'return_type': 'void'},
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     '__destruct': { 'signature': 'void | void', 'return_type': 'void'},
\     'getBody': { 'signature': '[ string $key] | mixed', 'return_type': 'mixed'},
\     'getHeader': { 'signature': 'void | void', 'return_type': 'void'},
\     'prependBody': { 'signature': 'string $content [, string $key] | bool', 'return_type': 'bool'},
\     'response': { 'signature': 'void | void', 'return_type': 'void'},
\     'setAllHeaders': { 'signature': 'void | void', 'return_type': 'void'},
\     'setBody': { 'signature': 'string $content [, string $key] | bool', 'return_type': 'bool'},
\     'setHeader': { 'signature': 'void | void', 'return_type': 'void'},
\     'setRedirect': { 'signature': 'void | void', 'return_type': 'void'},
\     '__toString': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_route_interface': {
\   'name': 'Yaf_Route_Interface',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_route_map': {
\   'name': 'Yaf_Route_Map',
\   'constants': {
\   },
\   'properties': {
\     '_ctl_router': { 'initializer': '', 'type': ''},
\     '_delimeter': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': '[ string $controller_prefer = false [, string $delimiter = '''']]', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_route_regex': {
\   'name': 'Yaf_Route_Regex',
\   'constants': {
\   },
\   'properties': {
\     '_route': { 'initializer': '', 'type': ''},
\     '_default': { 'initializer': '', 'type': ''},
\     '_maps': { 'initializer': '', 'type': ''},
\     '_verify': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $match, array $route [, array $map [, array $verify]]', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_route_rewrite': {
\   'name': 'Yaf_Route_Rewrite',
\   'constants': {
\   },
\   'properties': {
\     '_route': { 'initializer': '', 'type': ''},
\     '_default': { 'initializer': '', 'type': ''},
\     '_verify': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $match, array $route [, array $verify]', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_route_simple': {
\   'name': 'Yaf_Route_Simple',
\   'constants': {
\   },
\   'properties': {
\     'controller': { 'initializer': '', 'type': ''},
\     'module': { 'initializer': '', 'type': ''},
\     'action': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $module_name, string $controller_name, string $action_name', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_route_static': {
\   'name': 'Yaf_Route_Static',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'match': { 'signature': 'string $uri | void', 'return_type': 'void'},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_route_supervar': {
\   'name': 'Yaf_Route_Supervar',
\   'constants': {
\   },
\   'properties': {
\     '_var_name': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     '__construct': { 'signature': 'string $supervar_name', 'return_type': ''},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_router': {
\   'name': 'Yaf_Router',
\   'constants': {
\   },
\   'properties': {
\     '_routes': { 'initializer': '', 'type': ''},
\     '_current': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'addConfig': { 'signature': 'Yaf_Config_Abstract $config | bool', 'return_type': 'bool'},
\     'addRoute': { 'signature': 'string $name, Yaf_Route_Abstract $route | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'getCurrentRoute': { 'signature': 'void | string', 'return_type': 'string'},
\     'getRoute': { 'signature': 'string $name | Yaf_Route_Interface', 'return_type': 'Yaf_Route_Interface'},
\     'getRoutes': { 'signature': 'void | mixed', 'return_type': 'mixed'},
\     'route': { 'signature': 'Yaf_Request_Abstract $request | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_session': {
\   'name': 'Yaf_Session',
\   'constants': {
\   },
\   'properties': {
\     '_session': { 'initializer': '', 'type': ''},
\     '_started': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\     '$_instance': { 'initializer': '', 'type': ''},
\   },
\   'methods': {
\     '__clone': { 'signature': 'void | void', 'return_type': 'void'},
\     '__construct': { 'signature': 'void', 'return_type': ''},
\     'count': { 'signature': 'void | void', 'return_type': 'void'},
\     'current': { 'signature': 'void | void', 'return_type': 'void'},
\     'del': { 'signature': 'string $name | void', 'return_type': 'void'},
\     '__get': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'has': { 'signature': 'string $name | void', 'return_type': 'void'},
\     '__isset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'key': { 'signature': 'void | void', 'return_type': 'void'},
\     'next': { 'signature': 'void | void', 'return_type': 'void'},
\     'offsetExists': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetGet': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'offsetSet': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     'offsetUnset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'rewind': { 'signature': 'void | void', 'return_type': 'void'},
\     '__set': { 'signature': 'string $name, string $value | void', 'return_type': 'void'},
\     '__sleep': { 'signature': 'void | void', 'return_type': 'void'},
\     'start': { 'signature': 'void | void', 'return_type': 'void'},
\     '__unset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'valid': { 'signature': 'void | void', 'return_type': 'void'},
\     '__wakeup': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\     'getInstance': { 'signature': 'void | void', 'return_type': 'void'},
\   },
\},
\'yaf_view_interface': {
\   'name': 'Yaf_View_Interface',
\   'constants': {
\   },
\   'properties': {
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'assign': { 'signature': 'string $name [, string $value] | bool', 'return_type': 'bool'},
\     'display': { 'signature': 'string $tpl [, array $tpl_vars] | bool', 'return_type': 'bool'},
\     'getScriptPath': { 'signature': 'void | void', 'return_type': 'void'},
\     'render': { 'signature': 'string $tpl [, array $tpl_vars] | string', 'return_type': 'string'},
\     'setScriptPath': { 'signature': 'string $template_dir | void', 'return_type': 'void'},
\   },
\   'static_methods': {
\   },
\},
\'yaf_view_simple': {
\   'name': 'Yaf_View_Simple',
\   'constants': {
\   },
\   'properties': {
\     '_tpl_vars': { 'initializer': '', 'type': ''},
\     '_tpl_dir': { 'initializer': '', 'type': ''},
\   },
\   'static_properties': {
\   },
\   'methods': {
\     'assign': { 'signature': 'string $name [, mixed $value] | bool', 'return_type': 'bool'},
\     'assignRef': { 'signature': 'string $name, mixed &$value | bool', 'return_type': 'bool'},
\     'clear': { 'signature': '[ string $name] | bool', 'return_type': 'bool'},
\     '__construct': { 'signature': 'string $tempalte_dir [, array $options]', 'return_type': ''},
\     'display': { 'signature': 'string $tpl [, array $tpl_vars] | bool', 'return_type': 'bool'},
\     'eval': { 'signature': 'string $tpl_content [, array $tpl_vars] | string', 'return_type': 'string'},
\     '__get': { 'signature': '[ string $name] | void', 'return_type': 'void'},
\     'getScriptPath': { 'signature': 'void | string', 'return_type': 'string'},
\     '__isset': { 'signature': 'string $name | void', 'return_type': 'void'},
\     'render': { 'signature': 'string $tpl [, array $tpl_vars] | string', 'return_type': 'string'},
\     '__set': { 'signature': 'string $name, mixed $value | void', 'return_type': 'void'},
\     'setScriptPath': { 'signature': 'string $template_dir | bool', 'return_type': 'bool'},
\   },
\   'static_methods': {
\   },
\},
\})
