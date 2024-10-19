module C

  syntax Boolean ::= "true" | "false"
                   | "(" Boolean ")" [bracket]
                   > "!" Boolean [function]
                   > left:
                     Boolean "&&" Boolean [function]
                   | Boolean "^" Boolean [function]
                   | Boolean "||" Boolean [function]
                   
// In this example, unlike the one above, &&, ^, and || have the same priority. 
// However, viewed as a group, the entire group is left associative. 
// This means that none of &&, ^, and || can appear as the right child of any of &&, ^, or ||.
// As a result of this, this grammar is also not ambiguous. However, it expresses a different grammar, 
// and you are encouraged to think about what the differences are in practice.


endmodule
