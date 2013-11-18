call extend(g:php_builtin_functions, {
\ 'bcadd(': 'string $left_operand, string $right_operand [, int $scale] | string',
\ 'bccomp(': 'string $left_operand, string $right_operand [, int $scale] | int',
\ 'bcdiv(': 'string $left_operand, string $right_operand [, int $scale] | string',
\ 'bcmod(': 'string $left_operand, string $modulus | string',
\ 'bcmul(': 'string $left_operand, string $right_operand [, int $scale] | string',
\ 'bcpow(': 'string $left_operand, string $right_operand [, int $scale] | string',
\ 'bcpowmod(': 'string $left_operand, string $right_operand, string $modulus [, int $scale] | string',
\ 'bcscale(': 'int $scale | bool',
\ 'bcsqrt(': 'string $operand [, int $scale] | string',
\ 'bcsub(': 'string $left_operand, string $right_operand [, int $scale] | string',
\ })
