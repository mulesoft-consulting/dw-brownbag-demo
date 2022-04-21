%dw 2.0
output application/json

import convertCase from FunctionsShorthand
---
convertCase("fruit", dw::core::Strings::capitalize)
// "apple" convertCase dw::core::Strings::capitalize