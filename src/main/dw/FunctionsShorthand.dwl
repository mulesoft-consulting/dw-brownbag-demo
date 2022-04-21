%dw 2.0

// 2 arg functions can be shorthanded
fun convertCase(string, fn) = fn(string)