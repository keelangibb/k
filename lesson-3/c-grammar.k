module C-GRAMMAR
  // built in Int type
  syntax Int ::= r"[\\+\\-]?[0-9]+" [token]
  syntax Id ::= "main" [token]

  // Integer in C
  syntax IntConstant ::= r"(([1-9][0-9]*)|(0[0-7]*)|(0[xX][0-9a-fA-F]+))(([uU][lL]?)|([uU]((ll)|(LL)))|([lL][uU]?)|(((ll)|(LL))[uU]?))?" [token]

  // breaking up grammer
  // Only the first line creates real grammar because it uses the token property.
  // The other lines only generate regex and use the syntax lexical keyword.
  syntax IntConstant ::= r"({DecConstant}|{OctConstant}|{HexConstant})({IntSuffix}?)" [token]
  syntax lexical DecConstant = r"{NonzeroDigit}({Digit}*)"
  syntax lexical OctConstant = r"0({OctDigit}*)"
  syntax lexical HexConstant = r"{HexPrefix}({HexDigit}+)"
  syntax lexical HexPrefix = r"0x|0X"
  syntax lexical NonzeroDigit = r"[1-9]"
  syntax lexical Digit = r"[0-9]"
  syntax lexical OctDigit = r"[0-7]"
  syntax lexical HexDigit = r"[0-9a-fA-F]"
  syntax lexical IntSuffix = r"{UnsignedSuffix}({LongSuffix}?)|{UnsignedSuffix}{LongLongSuffix}|{LongSuffix}({UnsignedSuffix}?)|{LongLongSuffix}({UnsignedSuffix}?)"
  syntax lexical UnsignedSuffix = r"[uU]"
  syntax lexical LongSuffix = r"[lL]"
  syntax lexical LongLongSuffix = r"ll|LL"
endmodule 
