%dw 2.0

// Optional arguments
fun addUserProfile(name, dept=null, countryCode="US") = 
    { "City" : name, "Department": dept, "Country": countryCode}