%dw 2.0

// Type setting helps you avoid bugs in DataWeave. 
// It runs the type-checking algorithm. 
// When you define constraints by Type assignments
// The tooling in the IDE runs the type checking and gives you 
// tool tips instead of waiting for the runtime to discover error in your logic.

// Type Declaration
type DefaultColor = "White"
type Color = "Red" | "Blue" | "Green" | DefaultColor


/**
* Enum-like set of colors that default to White if no args passed in.
*/
var colors = (color:Color="White") -> "Color is $color"