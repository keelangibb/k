module D

  syntax Boolean ::= "true" [group(literal)] | "false" [group(literal)]
                   | "(" Boolean ")" [group(atom), bracket]
                   | "!" Boolean [group(not), function]
                   | Boolean "&&" Boolean [group(and), function]
                   | Boolean "^" Boolean [group(xor), function]
                   | Boolean "||" Boolean [group(or), function]

  syntax priority literal atom > not > and > xor > or
  syntax left and
  syntax left xor
  syntax left or
endmodule
