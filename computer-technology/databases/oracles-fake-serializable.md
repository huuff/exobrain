---
tags: trivia
---

# Oracle's serializable level is actually snapshot isolation
Oracle leveraged an ambiguity in the SQL standard where (at least for their lawyers) it's interpreted that a [[serializable]] [[isolation-level]] is reached just if it's capable of preventing [[dirty-read]], [[non-repeatable-read]] and [[phantom-read]]. Actually, the implementation Oracle has is [[snapshot-isolation]] and not true [[serializable]].

[Source](https://web.archive.org/web/20220418164231/https://dbmsmusings.blogspot.com/2019/05/introduction-to-transaction-isolation.html)
