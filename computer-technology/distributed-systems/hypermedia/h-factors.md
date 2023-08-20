---
tags: definition
---

# H-Factors
(From Mike Amundsen's book *Building Hypermedia APIs with HTML5 and Node*)

H-Factors describe ways in which a specific media type/format expresses hypermedia characteristics. There are two types: **link factors** and **control factors**

## Link Factors
These represent opportunities for a client to advance the state of the application by activating a link.

### Embedding Links (LE)
It indicates to the client application that the linked URI should be followe using the protocol's read operation (e.g. HTTP GET) and the resulting response should be displayed withing the current output window. This results in merging the current content display with the content at the other end of the link.

The `img` tag in HTML is an implementation of a LE

### Outbound Links (LO)
It indicates that the accompanying URI should be de-referenced using the protocol's read operation, and that the result should be treated as a complete display, which may mean replacing the current display's content or opening a new view/window.

The `a` tag in HTML is an implementation of a LO

### Templated Links (LT)
Provides a way to indicate that one or more parameters can be supplier when executing a read operation. These factors are always read-only

A `form` element in HTML with a `method="get"` attribute is an implementation of an LT

### Idempotent Links (LI)
These are submissions to the server that are [[idempotent]]. At the HTTP level, they are supported by the `PUT` and `DELETE` method, but HTML has no native support for them

### Non-Idempotent Links(LN)
These support non-idempotent submissions to the server. In the HTTP protocol, they are represented by the `POST` method. In HTML they are supported by `form` elements with a `method="post"` attribute.

## Control Factors
These provide support for additional metadata when executing links operations. They can vary depending on the protocol (FTP, HTTP). Their functionality is supposed to be orthogonal to the link's function.

An example of this are HTTP's headers.

### Read Controls (CR)
These manipulate read operations. For example, the `Accept-Language` header in HTTP.

### Update Controls (CU)
These manipulate send/update operations. An example of this is the `enctype` field in an HTML `form` element. 

### Method Controls (CM)
Support the ability to change the control data for the protocol method used for the request. HTML supports this factor with the `method` attribute of the `form` element.

### Link Annotation Controls (CL)
CL factors provide inline metadata for links themselves. They allow client applications to locate and understand the meaning of selected link elements. They allow a way for servers to decorate links with additional metadata using an agreed-upon set of keywords.

An example of CL might be the `rel` attribute of the `link` element in HTML, that allows specifying how to interpret the target link (e.g., `stylesheet` will make the target link to be interpreted as a stylesheet.)
