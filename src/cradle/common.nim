#[
 Motivation: duplicate 'cradle' functionality for reuse later.
 Don't worry about idiomatic Nim (or functions already exist in stdlib) now,
 just duplicate functionality.

 Pretty trivial to port since original was in Turbo Pascal.
]#
import strutils

var LookAhead*: char

const
  TabChar* = '\t'

# Read character from STDIN
proc GetChar*(c: var char) =  c = stdin.readChar

proc Error*(errorMsg: string) =
  echo "Error: $#" % errorMsg

proc Abort*(s: string) =
  s.Error
  quit(0)

proc Expected*(s:string) =
  Abort(s & " expected.")

proc Match*(x: char) =
  if LookAhead == x: LookAhead.GetChar
  else: Expected "'$#'".format($x)

# Duplicate of strutils
proc IsAlpha*(c: char): bool = c.toUpper in {'A' .. 'Z'}
proc IsDigit*(c: char): bool = c in {'0' .. '9'}

proc GetName*(): char =
  if not LookAhead.IsAlpha: Expected "Name"
  else:
    result = LookAhead.toUpper
    LookAhead.GetChar

proc GetNum*(): char =
  if not LookAhead.IsDigit: Expected "Integer"
  result = LookAhead
  LookAhead.GetChar

proc Emit*(s: string) =
  stdout.write TabChar
  stdout.write s

proc EmitLn*(s: string) =
  s.Emit
  stdout.write "\n"

proc Init*() =
  LookAhead.GetChar

when isMainModule:
  Init()
