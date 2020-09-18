discard """
  errormsg: "invalid type: 'type Table' for const"
  file: "typedescs2.nim"
  line: 16
"""

# issue #9961

import typetraits
import tables

proc test(v: typedesc) =
  echo v.type.name

# This crashes the compiler
const b: typedesc = Table
test b
