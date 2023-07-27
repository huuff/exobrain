---
tags: sucks
---

# What sucks about next.js
* Types are pretty lame. Some examples:
  * It includes a type declaration for all file image types (jpg, png, etc.) so that they can be used as the `src` of a `next/image` component. This would be great HOWEVER, for `.svg` files the declaration is `any` because otherwise that might conflict with svgr's types. So the solution to the conflict is to just discard any type safety?
