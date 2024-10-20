module B
  imports BOOL

  syntax Fruit ::= Blueberry() | Banana() | Berry()
  syntax Bool ::= isBlue(Fruit) [function]

  rule isBlue(Blueberry()) => true
  rule isBlue(Berry()) => true
  rule isBlue(Banana()) => false
  

  syntax Bool ::= isYellow(Fruit) [function]

  rule isYellow(Banana()) => true
  rule isYellow(Berry()) => true
  rule isYellow(Blueberry()) => false

  syntax Bool ::= isBlueOrYellow(Fruit) [function]
  rule isBlueOrYellow(F) => isBlue(F) orBool isYellow(F)

  syntax Bool ::= isBlueAndNotYellow(Fruit) [function]
  rule isBlueAndNotYellow(F) => isBlue(F) andBool notBool isYellow(F)

endmodule
