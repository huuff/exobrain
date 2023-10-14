---
tags: caveat
---

# Never do one-tailed tests
There's apparently a wealth of opinions (coming from reputable scientists) against one-tailed tests. Some examples are:
* For beginners, they are harder to interpret. Since the direction of the effect must be taken into account, it might be confusing to accept the null hypothesis when there is a significant effect in the opposite direction.
* Scientists are usually very open to any kind of discovery they can make with their research. Completely disregarding any effect that could be found in the opposite direction of the expected one would mean closing one's mind against a result that could be very interesting to examine.
* Good research practice (==though I'd like to have a good mathematical explanation for this one==) requires that any testing conditions (such as $\alpha$-level or direction) be decided BEFORE the sampling is done. If we set to do a one-tailed test and we get a significant effect in the opposite direction, we must ignore it and discard an interesting result.
* Two-tailed tests have a smaller region of significant results in each direction (since the $\alpha$ level must be split between both), so I suppose we have more certainty in a result we find in some direction.
* They encourage cheating. If we get a $0.06$ $p$-value for two-tailed test, we could do a one-tailed test to get a statistically significant result.
