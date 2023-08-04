---
tags: sucks
---

# What sucks about next.js
* TypeScript support is kind of lame. Some examples:
  * It includes a type declaration for all file image types (jpg, png, etc.) so that they can be used as the `src` of a `next/image` component. This would be great HOWEVER, for `.svg` files the declaration is `any` because otherwise that might conflict with svgr's types. So the solution to the conflict is to just discard any type safety?
  * It doesn't support typescript for the config file, forcing you to have any code that you want to share between it and the rest of the project in JavaScript.
* It does't allow returning `undefined` fields from a `getStaticProps` (and likely `getServerSideProps`) because "they can't be serialized to JSON" (just like, don't include them?). This forces you to use `null` to model missing data, which is suboptimal since the rest of the world already decided on avoiding `null` and using `undefined` by default.
