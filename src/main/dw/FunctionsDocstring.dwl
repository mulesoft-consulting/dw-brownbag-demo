%dw 2.0

//Regex
/**
* Describes the `findMatch` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `word` | Any | 
* | `regexStr` | Any | 
* |===
*
* === Example
*
* This example shows how the `findMatch` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* var payload = { "message": "Hello world!"}
* var regexStr = /([Hh]ello [Ww]orld).*
* ---
*
* findMatch(payload.message, regexStr)
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* "Hello world!"
* ----
*
*/
fun findMatch(word, regexStr) = if(word matches regexStr) word else "Not found"





