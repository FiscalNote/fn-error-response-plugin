%dw 2.0
output application/json
---
[
   {
      "errorType":"HTTP:CLIENT_SECURITY",
      "errorCode":"401",
      "errorMessage": vars.unauthorizedError default "The request requires user authentication.",
      "rfcName": "Unauthorized"
   },
	 {
      "errorType":"HTTP:FORBIDDEN",
      "errorCode":"403",
      "errorMessage":vars.forbiddenError default "The request authorization is forbidden. The request SHOULD NOT be repeated.",
      "rfcName": "Forbidden"
   },
	 {
      "errorType":"HTTP:SECURITY",
      "errorCode":"401",
      "errorMessage":vars.unauthorizedError default "The request requires user authentication.",
      "rfcName": "Unauthorized"
   },
	 {
      "errorType":"MULE:SECURITY",
      "errorCode":"401",
      "errorMessage":vars.unauthorizedError default "The request requires user authentication.",
      "rfcName": "Unauthorized"
   },
	 {
      "errorType":"HTTP:UNAUTHORIZED",
      "errorCode":"401",
      "errorMessage":vars.unauthorizedError default "The request requires user authentication.",
      "rfcName": "Unauthorized"
   },
	 {
      "errorType":"APIKIT:BAD_REQUEST",
      "errorCode":"400",
      "errorMessage":vars.badRequestError default "The request could not be understood by the server.  The client should update the request before resending.",
      "rfcName": "Bad Request"
   },
	 {
      "errorType":"HTTP:BAD_REQUEST",
      "errorCode":"400",
      "errorMessage":vars.badRequestError default "The request could not be understood by the server.  The client should update the request before resending.",
      "rfcName": "Bad Request"
   },
	 {
      "errorType":"HTTP:PARSING",
      "errorCode":"400",
      "errorMessage":vars.badRequestError default "Request message could not be parsed correctly.",
      "rfcName": "Bad Request"
   },
	 {
      "errorType":"HTTP:NOT_FOUND",
      "errorCode":"404",
      "errorMessage":vars.notFoundError default "The server has not found anything matching the Request-URI.",
      "rfcName": "Not Found"
   },
	 {
      "errorType":"APIKIT:NOT_FOUND",
      "errorCode":"404",
      "errorMessage":vars.notFoundError default "The server has not found anything matching the Request-URI.",
      "rfcName": "Not Found"
   },
    {
      "errorType":"HTTP:METHOD_NOT_ALLOWED",
      "errorCode":"405",
      "errorMessage":vars.methodNotAllowedError default "The method specified is not allowed for the resource identified by the Request-URI.",
      "rfcName": "Method Not Allowed"
   },
	 {
      "errorType":"APIKIT:METHOD_NOT_ALLOWED",
      "errorCode":"405",
      "errorMessage":vars.methodNotAllowedError default "The method specified is not allowed for the resource identified by the Request-URI.",
      "rfcName": "Method Not Allowed"
   },
	 {
      "errorType":"APIKIT:NOT_ACCEPTABLE",
      "errorCode":"406",
      "errorMessage":vars.notAcceptableError default "The resource identified is not acceptable according to the accept headers sent in the request.",
      "rfcName": "Not Acceptable"
   },
	 {
      "errorType":"HTTP:NOT_ACCEPTABLE",
      "errorCode":"406",
      "errorMessage":vars.notAcceptableError default "The resource identified is not acceptable according to the accept headers sent in the request.",
      "rfcName": "Not Acceptable"
   },
	 {
      "errorType":"APIKIT:UNSUPPORTED_MEDIA_TYPE",
      "errorCode":"415",
      "errorMessage":vars.unsupportedMediaTypeError default "Media Type not supported.",
      "rfcName": "Unsupported Media Type"
   },
	 {
      "errorType":"HTTP:UNSUPPORTED_MEDIA_TYPE",
      "errorCode":"415",
      "errorMessage":vars.unsupportedMediaTypeError default "Media Type not supported.",
      "rfcName": "Unsupported Media Type"
   },
	 {
      "errorType":"HTTP:CONNECTIVITY",
      "errorCode":"503",
      "errorMessage":vars.connectivityError default "The server did not receive a response from the upstream server specified by the URI.",
      "rfcName": "Bad Connectivity"
   },
	 {
      "errorType":"HTTP:RETRY_EXHAUSTED",
      "errorCode":"503",
      "errorMessage":vars.connectivityError default "The server did not receive a response from the upstream server specified by the URI.",
      "rfcName": "Bad Connectivity"
   },
	 {
      "errorType":"HTTP:SERVICE_UNAVAILABLE",
      "errorCode":"503",
      "errorMessage":vars.connectivityError default "The server did not receive a response from the upstream server specified by the URI.",
      "rfcName": "Bad Connectivity"
   },
	 {
      "errorType":"APIKIT:NOT_IMPLEMENTED",
      "errorCode":"501",
      "errorMessage":vars.notImplementedError default "The server does not support the functionality required to fulfill the request.",
      "rfcName": "Not Implemented"
   },
	 {
      "errorType":"HTTP:NOT_IMPLEMENTED",
      "errorCode":"501",
      "errorMessage":vars.notImplementedError default "The server does not support the functionality required to fulfill the request.",
      "rfcName": "Not Implemented"
   },
	 {
      "errorType":"HTTP:TIMEOUT",
      "errorCode":"408",
      "errorMessage":vars.timeoutError default "The request has timed out.",
      "rfcName": "Timeout"
   },
	 {
      "errorType":"HTTP:TOO_MANY_REQUESTS",
      "errorCode":"429",
      "errorMessage":vars.tooManyRequestsError default "Too many requests in a given amount of time. This API is rate-limited.",
      "rfcName": "Too Many Requests"
   }
]
