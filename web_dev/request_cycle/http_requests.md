## Release 0

1. What are some common HTTP status codes?
  
  200 ok, 300 multiple choices, 301 moved permanently, 302 found, 304 not modified, 307 temporary redirect, 400 Bad Request, 401 unauthorized, 403 forbidden, 404 not found, 410 gone, 500 internal server error, 501 not implemented, 503 service unavailable, 550 permission denied

2. What is the difference between a GET request and a POST request? When might each be used?

GET requests can be cached, POST requests are never cached
GET requests remain in the browser history, POST requests do not remain in the browser history
GET requests can be bookmarked, POST requests cannot be bookmarked
GET requests have length restrictions, POST requests have no restrictions on data length
GET requests should be used only to retrieve data
GET requests should never be used when dealing with sensitive data

A GET request might be used to get something that's ok to be public.
A POST request might be used to collect a password.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

