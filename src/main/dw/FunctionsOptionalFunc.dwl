%dw 2.0

// Passing an Optional Function Argument
fun upperCase(e) = upper(e)

fun makeUpper(e, function=upperCase) = function(e)
