const RE_SPACE = module.exports.RE_SPACE = '\\s'
const RE_SECOND_COMMENT_CHAR = module.exports.RE_SECOND_COMMENT_CHAR = '[/*]'

const RE_FULL_STOP = module.exports.RE_FULL_STOP = '\\.'
const RE_COMMA = module.exports.RE_COMMA = ','
const RE_SEMICOLON = module.exports.RE_SEMICOLON = ';'
const RE_EQUALS = module.exports.RE_EQUALS = '='
const RE_OPEN_PARENTHESIS = module.exports.RE_OPEN_PARENTHESIS = '\\('
const RE_CLOSE_PARENTHESIS = module.exports.RE_CLOSE_PARENTHESIS = '\\)'
const RE_OPEN_SQUARE_BRACKET = module.exports.RE_OPEN_SQUARE_BRACKET = '\\['
const RE_CLOSE_SQUARE_BRACKET = module.exports.RE_CLOSE_SQUARE_BRACKET = '\\]'
const RE_OPEN_CURLY_BRACE = module.exports.RE_OPEN_CURLY_BRACE = '\\{'
const RE_CLOSE_CURLY_BRACE = module.exports.RE_CLOSE_CURLY_BRACE = '\\}'

const RE_CLASS = module.exports.RE_CLASS = 'class'
const RE_CONSTRUCTOR = module.exports.RE_CONSTRUCTOR = 'constructor'
const RE_FUNCTION = module.exports.RE_FUNCTION = 'function'
const RE_METHOD = module.exports.RE_METHOD = 'method'
const RE_FIELD = module.exports.RE_FIELD = 'field'
const RE_STATIC = module.exports.RE_STATIC = 'static'
const RE_VAR = module.exports.RE_VAR = 'var'
const RE_INT = module.exports.RE_INT = 'int'
const RE_CHAR = module.exports.RE_CHAR = 'char'
const RE_BOOLEAN = module.exports.RE_BOOLEAN = 'boolean'
const RE_VOID = module.exports.RE_VOID = 'void'
const RE_TRUE = module.exports.RE_TRUE = 'true'
const RE_FALSE = module.exports.RE_FALSE = 'false'
const RE_NULL = module.exports.RE_NULL = 'null'
const RE_THIS = module.exports.RE_THIS = 'this'
const RE_LET = module.exports.RE_LET = 'let'
const RE_DO = module.exports.RE_DO = 'do'
const RE_IF = module.exports.RE_IF = 'if'
const RE_ELSE = module.exports.RE_ELSE = 'else'
const RE_WHILE = module.exports.RE_WHILE = 'while'
const RE_RETURN = module.exports.RE_RETURN = 'return'
const RE_KEYWORD = module.exports.RE_KEYWORD = `(?:${RE_CLASS}|${RE_CONSTRUCTOR}|${RE_FUNCTION}|${RE_METHOD}|${RE_FIELD}|${RE_STATIC}|${RE_VAR}|${RE_INT}|${RE_CHAR}|${RE_BOOLEAN}|${RE_VOID}|${RE_TRUE}|${RE_FALSE}|${RE_NULL}|${RE_THIS}|${RE_LET}|${RE_DO}|${RE_IF}|${RE_ELSE}|${RE_WHILE}|${RE_RETURN}|)`

const RE_SYMBOL = module.exports.RE_SYMBOL = '[-{}()[\\].,;+*/&|<>=~]'
const RE_INTEGER_CONSTANT = module.exports.RE_INTEGER_CONSTANT = '[0-9]{1,5}'
const RE_STRING_CONTENTS = module.exports.RE_STRING_CONTENTS = '[^"\n]*'
const RE_STRING_CONSTANT = module.exports.RE_STRING_CONSTANT = `"${RE_STRING_CONTENTS}"`
const RE_KEYWORD_CONSTANT = module.exports.RE_KEYWORD_CONSTANT = `(?:${RE_TRUE}|${RE_FALSE}|${RE_NULL}|${RE_THIS})`

const RE_IDENTIFIER = module.exports.RE_IDENTIFIER = '[_a-zA-Z]+[_a-zA-Z0-9]*'
const RE_CLASS_NAME = module.exports.RE_CLASS_NAME = RE_IDENTIFIER
const RE_VAR_NAME = module.exports.RE_VAR_NAME = RE_IDENTIFIER
const RE_SUBROUTINE_NAME = module.exports.RE_SUBROUTINE_NAME = RE_IDENTIFIER
const RE_OBJECT_NAME = module.exports.RE_OBJECT_NAME = `(?:${RE_CLASS_NAME}|${RE_VAR_NAME})`

const RE_CLASS_VAR_DEC = module.exports.RE_CLASS_VAR_DEC = `(?:${RE_STATIC}|${RE_FIELD})`
const RE_SUBROUTINE_DEC = module.exports.RE_SUBROUTINE_DEC = `(?:${RE_CONSTRUCTOR}|${RE_FUNCTION}|${RE_METHOD})`

const RE_TYPE = module.exports.RE_TYPE = `(?:${RE_INT}|${RE_CHAR}|${RE_BOOLEAN}|${RE_CLASS_NAME})`
const RE_SUBROUTINE_TYPE = module.exports.RE_SUBROUTINE_TYPE = `(?:${RE_VOID}|${RE_TYPE})`
const RE_SUBROUTINE_INDICATOR = module.exports.RE_SUBROUTINE_INDICATOR = `(?:${RE_FULL_STOP}|${RE_OPEN_PARENTHESIS})`

const RE_STATEMENT = module.exports.RE_STATEMENT = `(?:${RE_LET}|${RE_DO}|${RE_IF}|${RE_WHILE}|${RE_RETURN})`

const RE_OPERATOR = module.exports.RE_OPERATOR = '[-+*/&|<>=]'
const RE_UNARY_OPERATOR = module.exports.RE_UNARY_OPERATOR = '[-~]'
