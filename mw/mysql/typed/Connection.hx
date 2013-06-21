package mw.mysql.typed;
import haxe.macro.Expr;
import haxe.macro.Context;

using mw.TypeExtensions;


class Connection2<Const> {

  public function new() {
  }

  macro public static function new_from_sys_db_con(schemeEval:String) {
    var define_con = Context.parse('new mw.mysql.typed.Connection2<"${schemeEval}">()', Context.currentPos());
    return define_con;
  }

  macro public function query(connection: Expr):Expr {
    // dummy implementation
#if WORK
    return null;
#end
  }

}
