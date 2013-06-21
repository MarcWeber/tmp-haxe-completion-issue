import haxe.macro.Expr;
import haxe.macro.Context;
import mw.mysql.typed.Connection;


class Main {

  static function main() {
      var c = Connection2.new_from_sys_db_con("new Scheme()");
      c.
      // 1) this app compiles
      // 2) expected completion after c. :  query(.. 
      //    which does not happen
      // 3) how to make it work? uncomment the "return null" line at TypeExtensions.hx
      //    or drop "using mw.TypeExtensions;" at Connection.hx
      // 
      // or make 
  }
}
