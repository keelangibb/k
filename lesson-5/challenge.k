module B 
  imports B-2
  imports B-3
endmodule

module B-1
  syntax Boolean ::= "true" | "false"
  syntax Boolean ::= "not" Boolean [function]
endmodule

module B-2  
  imports B-1
  rule not true => false
endmodule

module B-3
  imports B-1
  rule not false => true
endmodule
