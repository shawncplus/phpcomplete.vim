<?php

function format_method_signature($signature) {
    $optional_depth = 0;
    $istr = '';
    if (empty($signature['params'])) {
        // "__construct"s have no return type, they dont need the " |" at the end
        return 'void'.($signature['return_type'] ? ' | '.$signature['return_type'] : '');
    }
    foreach ($signature['params'] as $i => $param) {
        if ($param['optional'] || isset($param['default']) || $optional_depth != 0) {
            ++$optional_depth;
            if ($i != 0) {
                $istr .= ' [, ';
            } else {
                $istr .= '[ ';
            }
        } elseif ($i != 0) {
            $istr .= ', ';
        }
        $istr .= $param['type'];
        $istr .= ' ';
        $istr .= $param['name'];
        if (isset($param['default'])) {
            $istr .= ' = '.vimstring_escape($param['default']);
        }
    }
    $istr .= str_repeat(']', $optional_depth);
    if ($signature['return_type']) {
        $istr .= ' | '.$signature['return_type'];
    }
    return trim($istr);
}


function array_index_by_col($arr, $col, $overwrite_duplicate = true) {
    $tmp = array();
    foreach ($arr as $i) {
        if (!isset($tmp[$i[$col]]) || $overwrite_duplicate) {
            $tmp[$i[$col]] = $i;
        }
    }
    return $tmp;
}

function vimstring_escape($str) {
    return str_replace("'", "''", $str);
}
