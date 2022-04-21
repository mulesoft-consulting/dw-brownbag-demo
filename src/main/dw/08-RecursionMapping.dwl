%dw 2.0
output application/json

import maskValues from Recursion
---
maskValues(payload, trim(""))
