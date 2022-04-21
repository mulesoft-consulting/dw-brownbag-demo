%dw 2.0
output application/json

// * Reduce applies a reduction expression to the elements in an array.
// * For each element of the input array, in order, `reduce` applies the reduction
// * lambda expression (function), then replaces the accumulator with the new
// * result.
---
payload reduce (item, acc = {}) ->   
        if((item.name ~= "Enterprise")) (acc )++ (item.&location) 
        else acc

