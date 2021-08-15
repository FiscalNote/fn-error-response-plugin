%dw 2.0
output application/json
import * from dw::Runtime
var errorTypes = vars.errorTypes splitBy(',')
var errorCodes = vars.errorCodes splitBy(',')
var errorMessages = vars.errorMessages splitBy(',')
---
if ((sizeOf(errorTypes) == sizeOf(errorCodes)) and (sizeOf(errorTypes) == sizeOf(errorMessages))) (
	
	errorTypes map ((item, index) -> {
    errorType: trim(errorTypes[index]),
    errorCode: trim(errorCodes[index]) default '500',
    errorMessage: trim(errorMessages[index]) default 'Mule backend error'
})
)



else fail("Incorrect number of entries for user-defined errors")