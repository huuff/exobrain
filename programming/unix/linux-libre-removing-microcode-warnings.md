# Linux-libre
Linux-libre has previously chosen to fight against proprietary software even against security considerations:

> Another significant change in this release is that it was pointed out
that there were error messages in Linux suggesting users to update x86
CPU microcode.  Since such microcode is non-Free Software, such messages
don't belong in GNU Linux-libre.  We now have patterns to detect and
clean up this sort of message.  A number of them were introduced
recently, relying on microcode changes to mitigate Spectre and Meltdown
problems, but there might be others that go farther back.  I haven't yet
made my mind on whether to go back, check and possibly respin such
earlier releases.

[Source](https://lists.gnu.org/archive/html/info-gnu/2018-04/msg00002)

These CPU's still have embedded non-free microcode, so not updating it doesn't really help much for the "freedom" cause.
