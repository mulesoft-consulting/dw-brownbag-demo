%dw 2.0

//formatters
var isNumeric = (string) -> dw::core::Strings::isNumeric(string)
var lengthValidator = (string) -> if(sizeOf(string)==10) string else dw::Runtime::fail("Exactly 10 characters required")
var numericValidator = (string) -> if(isNumeric(string)) string else dw::Runtime::fail("Numeric type must be provided")

/**
* Valid phone number formatter with numeric characters and exactly 10 digit arg.
*/
var phoneFormatter = (phone:String) -> do {
        var validPhone = numericValidator(lengthValidator(phone))
        ---
        "(" ++ validPhone[0 to 2] ++ ") " ++ validPhone[3 to 5] ++ "-" ++ validPhone[6 to 9]
    }