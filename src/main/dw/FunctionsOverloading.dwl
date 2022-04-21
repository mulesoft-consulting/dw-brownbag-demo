%dw 2.0

//Function Overloading
fun greet(name) = "Hello $name"
fun greet(name, fn) = fn(greet(name))
fun greet(name, fn, instructions:String) = (greet(name, fn) ++ instructions)