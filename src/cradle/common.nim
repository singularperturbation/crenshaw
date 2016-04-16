# Motivation: duplicate 'cradle' functionality for reuse later.
import strutils

var LookAhead*: char

const
  TabChar* = '\t'

# Read character from STDIN
proc GetChar*(c: var char) =  c = stdin.readChar

proc Error*(errorMsg: string) =
  echo "Error: $#" % errorMsg
# program Cradle ;
# { Constant D e c l a r a t i o n s }
# const TAB = ^ I ;
# { Variable Declarations }
# var Look : char ;
# { Lookahead C h a r a c t e r }
# { Read New C h a r a c t e r From I n p u t Stream }
# procedure GetChar ;
# begin
# Read ( Look ) ;
# end ;
# { Report an E r r o r }
# 31.2. THE CRADLE
# procedure E r r o r ( s : s t r i n g ) ;
# begin
# WriteLn ;
# WriteLn ( ^G, ’ E r r o r : ’ , s ,
# end ;
# ’ . ’ );
# { Report E r r o r and H a l t }
# procedure A b o r t ( s : s t r i n g ) ;
# begin
# Error ( s ) ;
# Halt ;
# end ;
# { Report What Was Expected }
# procedure Expected ( s : s t r i n g ) ;
# begin
# A b o r t ( s + ’ Expected ’ ) ;
# end ;
# { Match a S p e c i f i c I n p u t C h a r a c t e r }
# procedure Match ( x : char ) ;
# begin
# i f Look = x then GetChar
# else Expected ( ’ ’ ’ ’ + x + ’ ’ ’ ’ ) ;
# end ;
# { Recognize an Alpha C h a r a c t e r }
# function I s A l p h a ( c : char ) : boolean ;
# begin
# I s A l p h a : = upcase ( c ) i n [ ’A ’ . . ’ Z ’ ] ;
# end ;
# { Recognize a Decimal D i g i t }
# function I s D i g i t ( c : char ) : boolean ;
# begin
# I s D i g i t := c in [ ’ 0 ’ . . ’ 9 ’ ] ;
# end ;
# { Get an I d e n t i f i e r }
# function GetName : char ;
# begin
# i f not I s A l p h a ( Look ) then Expected ( ’Name ’ ) ;
# GetName : = UpCase ( Look ) ;
# GetChar ;
# end ;
# { Get a Number }
# function GetNum : char ;
# begin
# i f not I s D i g i t ( Look ) then Expected ( ’ I n t e g e r ’ ) ;
# 41.2. THE CRADLE
# GetNum : = Look ;
# GetChar ;
# end ;
# { Output a S t r i n g w i t h Tab }
# procedure Emit ( s : s t r i n g ) ;
# begin
# Write ( TAB , s ) ;
# end ;
# { Output a S t r i n g w i t h Tab and CRLF }
# procedure EmitLn ( s : s t r i n g ) ;
# begin
# Emit ( s ) ;
# WriteLn ;
# end ;
# { Initialize }
# procedure I n i t ;
# begin
# GetChar ;
# end ;
# { Main Program }
# begin
# Init ;
# end .
