module CONTENTSOF
  imports CONTENTSOF-SYNTAX
  rule contentsOfJar(Jar(T)) => T

endmodule

module CONTENTSOF-SYNTAX
  imports CONTAINER
  syntax Fruit ::= contentsOfJar(Container) [function]
endmodule

module CONTAINER
  imports FRUIT
  syntax Container ::=  Jar(Fruit)
endmodule

module FRUIT
  syntax Fruit ::= Apple() | Pear()
endmodule

