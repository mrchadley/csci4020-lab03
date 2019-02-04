lexer grammar JLexer;

WHITESPACE : [ \t\r\n]+ -> skip;

KEYWORD_IMPORT : 'import';
KEYWORD_PUBLIC : 'public';
KEYWORD_STATIC : 'static';
KEYWORD_VOID : 'void';
KEYWORD_OVERRIDE : '@Override';

TYPE_INT : 'int';
TYPE_FLOAT : 'float';

ID : [a-zA-Z_][a-zA-Z0-9_]*;
INTEGER_LITERAL : [0-9]+;
DECIMAL_LITERAL : [0-9]+('.'[0-9]+)?;
STRING_LITERAL : '"' (~'"')* '"';

//IMPORT : 'import '([a-zA-Z0-9_]+'.')*[a-zA-Z0-9_]+('.''*')?;

SEMICOLON : ';';
COLON : ':';
PERIOD : '.';
GREATER : '<';
LESS : '>';
EQ : '=';
PLUS : '+';
MINUS : '-';
KLEENE : '*';


OPEN_CURLY : '{';
CLOSE_CURLY : '}';
OPEN_SQUARE : '[';
CLOSE_SQUARE : ']';
OPEN_BRACKET : '(';
CLOSE_BRACKET : ')';