%dw 2.0

// Recursion
// maskValues function masks the deeply nested values
// that match the `matchKey` argument

fun maskValues (e: Any, matchKey: String): Any = e match {
            case is Array -> e as Array map maskValues($, matchKey)
            case is Object -> e as Object mapObject (v, k) -> 
                        if (k ~= matchKey) {(k): "*******************"} 
                                else {(k): maskValues(v, matchKey)}
				else -> e
	}