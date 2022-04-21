%dw 2.0
output application/json

var regexStr = /([Hh]ello [Ww]orld).*/
import findMatch from FunctionsDocstring

---
findMatch(payload.message, regexStr)