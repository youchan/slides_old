eval$s=%w(
  s=%(eval$s=%w(#{$s})*"");

  d = 
"BAhbJCIfAAAAAAAAPwAAAAAAAAAAAAAAAAAHwAAAAfAiHwf/wAAAAD8AAAAAAABQB+AfwAAAD8AAAAPwIh8H//AAAAA/AAAAAAAB8AfgP4AAAA/AAAAD8CIfB//4AAAAPwAAAAAAA/AH4P8AAAAPwAAAA/AiHwf//AAAACoAAAAAAAPwD+H+AAAACgAAAAHAIh8P6/wAAAAAAAAAAAAD8A/D+AAAAAAAAAAAACIfD8D8AP4AfgB/AAH+H/+Px/AB/4AfgD4/B+AiHw/A/AP/gH4B/8AH/x//j8/gB//gH4D/vwfgIh8PwPwP/8B+B//gH/+f/4//wAf/8B8B//4H4CIfD8H4H//gfA//8D//P/8f/4AH7/AfA//+B8AiHx+D+D+H4Pwfg/B/gwfgH/4ABAPwHwfx/g/AIh8f//A/A+B8H4HwfgAH4B/+AAAB+D8P4P4HwCIfH//AfgPw/D8B+PwAB8Af+AAB//A/D8D+D8AiHx//gH//4Pw///D8AA/AH/4AB//4Pw/AfA/AIh8f/8D//+D4f//w/AAPwB/+AB//8D4PgHwPgCIfP4/g///g+H//8fgAD8A/fwAfp/A+H4D8D4AiHz8H4P5qofh/mpH4AA/APz+APwPwfh+A/B+AIh8/A/B8AAH4fgAB+AAPgD8fwD4D8H4fgPwfgCIfPwPw/ABB+H4AAfwAD4B/D+B+B/B+H4H8HwAiH38D8H4BgfB/AeD+BB/APwfwPw/gfA/j+B+AIh9+Afh//4HwP//A//wP/H4D8D//4HwP//gfACIffgH4P/+D8B//wH/8D/x+A/g//+D8D//4PwAiH34B+B//g/AP/8A/+A/8fgH8H/fg/Af9+D8AIh9+AfgH/APwA/4AD/AD+H4A/geHwPwB8fA/ACIfAAAAAAAD4AAAAAAAAAAAAAAAAAAAAAPwAAAiHwAAAAAAB+AAAAAAAAAAAAAAAAAAAAAD8AAAIh8AAAAAAAfgAAAAAAAAAAAAAAAAAAAYD+AAACIfAAAAAAA/wAAAAAAAAAAAAAAAAAAAH//AAAAiHwAAAAAAf4AAAAAAAAAAAAAAAAAAAB//gAAAIh8AAAAAAH+AAAAAAAAAAAAAAAAAAAAf/wAAACIfAAAAAAB+AAAAAAAAAAAAAAAAAAAAB/gAAAA=";

  f = -> n { s.slice!(0, n) };

  Marshal.load(d.unpack('m')[0]).each {|line|
    line.bytes {|byte|
      8.times {|i|
        print((byte & (1 << (7 - i))) > 0 ? f[1] : "\s")
      }
    };
    puts
  };

  %(**********************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************)
)*""
