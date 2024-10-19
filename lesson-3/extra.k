module EXTRA

  syntax Boolean ::= 
    "true"
  | "false"
  | "(" Boolean ")"      [bracket]
  | "!" Boolean          [function]
  | Boolean "&&" Boolean [function]
  | Boolean "^" Boolean  [function]
  | Boolean "||" Boolean [function]

  syntax lexical Digit = r"[0-9]"

  syntax Int ::= 
    r"{Digit}"   [token]
  | "(" Int ")"  [bracket, group(literal)]
  | "-" Int      [function, group(negative)]
  | Int "*" Int  [function, group(mul)]
  | Int "/" Int  [function, group(div)]
  | Int "+" Int  [function, group(add)]
  | Int "-" Int  [function, group(sub)]

  // Declaring associativity explicitly

  syntax priority literal negative > mul div > add sub
  syntax left negative
  syntax left add
  syntax left sub
  syntax left mul
  syntax left div

// this is not ambiguous
syntax Expr ::= "a" Expr "b" 
              | "abb" 
              | "b" 

endmodule
