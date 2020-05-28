
//----------------------------------------------------
// The following code was generated by CUP v0.11a beta 20060608
// Thu May 21 15:07:00 COT 2020
//----------------------------------------------------

package sintactico1;

import java_cup.runtime.*;

/** CUP v0.11a beta 20060608 generated parser.
  * @version Thu May 21 15:07:00 COT 2020
  */
public class parser extends java_cup.runtime.lr_parser {

  /** Default constructor. */
  public parser() {super();}

  /** Constructor which sets the default scanner. */
  public parser(java_cup.runtime.Scanner s) {super(s);}

  /** Constructor which sets the default scanner. */
  public parser(java_cup.runtime.Scanner s, java_cup.runtime.SymbolFactory sf) {super(s,sf);}

  /** Production table. */
  protected static final short _production_table[][] = 
    unpackFromStrings(new String[] {
    "\000\012\000\002\005\012\000\002\002\004\000\002\006" +
    "\003\000\002\006\004\000\002\002\006\000\002\003\003" +
    "\000\002\003\005\000\002\004\003\000\002\004\003\000" +
    "\002\004\005" });

  /** Access to production table. */
  public short[][] production_table() {return _production_table;}

  /** Parse-action table. */
  protected static final short[][] _action_table = 
    unpackFromStrings(new String[] {
    "\000\031\000\004\011\005\001\002\000\004\002\033\001" +
    "\002\000\004\007\006\001\002\000\004\012\007\001\002" +
    "\000\010\004\012\006\011\007\013\001\002\000\004\013" +
    "\021\001\002\000\014\005\ufffa\007\ufffa\010\ufffa\013\ufffa" +
    "\015\ufffa\001\002\000\010\004\012\006\011\007\013\001" +
    "\002\000\014\005\ufff9\007\ufff9\010\ufff9\013\ufff9\015\ufff9" +
    "\001\002\000\010\005\ufffc\010\ufffc\015\ufffc\001\002\000" +
    "\006\005\016\010\017\001\002\000\014\005\ufff8\007\ufff8" +
    "\010\ufff8\013\ufff8\015\ufff8\001\002\000\010\004\012\006" +
    "\011\007\013\001\002\000\010\005\ufffb\010\ufffb\015\ufffb" +
    "\001\002\000\010\004\012\006\011\007\013\001\002\000" +
    "\004\007\025\001\002\000\006\007\uffff\014\uffff\001\002" +
    "\000\006\007\025\014\032\001\002\000\004\012\026\001" +
    "\002\000\010\004\012\006\011\007\013\001\002\000\006" +
    "\010\017\015\030\001\002\000\006\007\ufffd\014\ufffd\001" +
    "\002\000\006\007\ufffe\014\ufffe\001\002\000\004\002\001" +
    "\001\002\000\004\002\000\001\002" });

  /** Access to parse-action table. */
  public short[][] action_table() {return _action_table;}

  /** <code>reduce_goto</code> table. */
  protected static final short[][] _reduce_table = 
    unpackFromStrings(new String[] {
    "\000\031\000\004\005\003\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\004\004\007\001\001" +
    "\000\002\001\001\000\002\001\001\000\006\003\014\004" +
    "\013\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\004\004\017\001\001\000" +
    "\002\001\001\000\004\004\021\001\001\000\006\002\022" +
    "\006\023\001\001\000\002\001\001\000\004\002\030\001" +
    "\001\000\002\001\001\000\006\003\026\004\013\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001" });

  /** Access to <code>reduce_goto</code> table. */
  public short[][] reduce_table() {return _reduce_table;}

  /** Instance of action encapsulation class. */
  protected CUP$parser$actions action_obj;

  /** Action encapsulation object initializer. */
  protected void init_actions()
    {
      action_obj = new CUP$parser$actions(this);
    }

  /** Invoke a user supplied parse action. */
  public java_cup.runtime.Symbol do_action(
    int                        act_num,
    java_cup.runtime.lr_parser parser,
    java.util.Stack            stack,
    int                        top)
    throws java.lang.Exception
  {
    /* call code in generated class */
    return action_obj.CUP$parser$do_action(act_num, parser, stack, top);
  }

  /** Indicates start state. */
  public int start_state() {return 0;}
  /** Indicates start production. */
  public int start_production() {return 1;}

  /** <code>EOF</code> Symbol index. */
  public int EOF_sym() {return 0;}

  /** <code>error</code> Symbol index. */
  public int error_sym() {return 1;}



    public String errsin="";
    public void syntax_error (Symbol x){
        errsin+="\nError Sintaxis en linea " + (x.left+1) + "," + (x.right+1);
        throw new UnsupportedOperationException (errsin);
    }

}

/** Cup generated class to encapsulate user supplied action code.*/
class CUP$parser$actions {
  private final parser parser;

  /** Constructor */
  CUP$parser$actions(parser parser) {
    this.parser = parser;
  }

  /** Method with the actual generated action code. */
  public final java_cup.runtime.Symbol CUP$parser$do_action(
    int                        CUP$parser$act_num,
    java_cup.runtime.lr_parser CUP$parser$parser,
    java.util.Stack            CUP$parser$stack,
    int                        CUP$parser$top)
    throws java.lang.Exception
    {
      /* Symbol object for return from actions */
      java_cup.runtime.Symbol CUP$parser$result;

      /* select the action based on the action number */
      switch (CUP$parser$act_num)
        {
          /*. . . . . . . . . . . . . . . . . . . .*/
          case 9: // T ::= pi E pd 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("T",2, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 8: // T ::= id 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("T",2, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 7: // T ::= num 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("T",2, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 6: // E ::= E op T 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("E",1, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 5: // E ::= T 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("E",1, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 4: // S ::= id asignacion E fin_i 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("S",0, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 3: // C ::= C S 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("C",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 2: // C ::= S 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("C",4, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 1: // $START ::= F EOF 
            {
              Object RESULT =null;
		int start_valleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left;
		int start_valright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).right;
		Object start_val = (Object)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-1)).value;
		RESULT = start_val;
              CUP$parser$result = parser.getSymbolFactory().newSymbol("$START",0, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          /* ACCEPT */
          CUP$parser$parser.done_parsing();
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 0: // F ::= xfor id asignacion T to T C endfor 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("F",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-7)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /* . . . . . .*/
          default:
            throw new Exception(
               "Invalid action number found in internal parse table");

        }
    }
}
