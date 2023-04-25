grammar KotlinOperators;

program
    : statement* EOF
    ;

statement
    : (assignment | expression) ';'
    ;

assignment
    : ID '=' expression
    ;

expression
    : atom (operator atom)*
    ;

atom
    : '(' expression ')'
    | BOOLEAN
    | NUMBER
    | ID
    | '!'
    ;

operator
    : '+'
    | '-'
    | '*'
    | '/'
    | '=='
    | '!='
    | '>'
    | '<'
    | '>='
    | '<='
    | '&&'
    | '||'
    ;

BOOLEAN : 'true' | 'false';
NUMBER : '-'? [0-9]+ ('.' [0-9]+)?;
ID : [a-zA-Z_] [a-zA-Z_0-9]*;
WS : [ \t\r\n]+ -> skip;
