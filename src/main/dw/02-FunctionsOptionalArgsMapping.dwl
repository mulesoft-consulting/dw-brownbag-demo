%dw 2.0
output application/json skipNullOn="everywhere"
import addUserProfile from FunctionsOptionalArgs
---
addUserProfile("John")