package mw;

import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Type;

class TypeExtensions {

  static public function typeParams(t:Type) {
    switch (t) {
      case TInst(_, params): return params;
      case _:
    };
    // return null;
    throw "unexpeced";
#if WORK
    return null;
#end
  }


}
