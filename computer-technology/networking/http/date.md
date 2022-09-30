# Dates in HTTP
HTTP (RFC 9110) specifies one main format for dates of fixed length, that is:

```
Sun, 06 Nov 1994 08:49:37 GMT    ; IMF-fixdate
```

There are, however, two other historical, deprecated formats that servers must accept for compatibility:

```
Sunday, 06-Nov-94 08:49:37 GMT   ; obsolete RFC 850 format
Sun Nov  6 08:49:37 1994         ; ANSI C's asctime() format
```

All of these (even the mainly accepted one) seem pretty bad to me:

* All of them (even IMF) require the name of the day of the week, which seems pretty redundant and useless
* RFC 850 is even worse... what year is 94? 1994? 2094? 45694? RFC 9110 states:

> Recipients of a timestamp value in rfc850-date format, which uses a two-digit year, MUST interpret a timestamp that appears to be more than 50 years in the future as representing the most recent year in the past that had the same last two digits.

Which means that RFC 850's year is relative to the current time, and mostly meaningless to future civilizations that analyze our HTTP messages for historical reasons after ours collapses.

### Rules for the `Date` header
All from RFC 9110:

> A sender that generates a Date header field SHOULD generate its field value as the best available approximation of the date and time of message generation
> An origin server with a clock (as defined in Section 5.6.7) MUST generate a Date header field in all 2xx (Successful), 3xx (Redirection), and 4xx (Client Error) responses, and MAY generate a Date header field in 1xx (Informational) and 5xx (Server Error) responses.
> A recipient with a clock that receives a response message without a Date header field MUST record the time it was received and append a corresponding Date header field to the message's header section if it is cached or forwarded downstream.
> A recipient with a clock that receives a response with an invalid Date header field value MAY replace that value with the time that response was recei
> A user agent MAY send a Date header field in a request, though generally will not do so unless it is believed to convey useful information to the server. For example, custom applications of HTTP might convey a Date if the server is expected to adjust its interpretation of the user's request based on differences between the user agent and server clo
