%dw 2.0
output application/json
import greet from FunctionsOverloading
---
greet("johnny", dw::core::Strings::capitalize, ". Please fill out the form.")