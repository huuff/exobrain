# You can't package a Java application
Abandon all hope. All solutions are only half-working, you'll be hitting new corner cases every day and you'll never get stuff done, fixing your derivations with every single change

* Generators: Such as `maven2nix` and `gradle2nix` are usually not updated much and far behind. Even so, they do not work well with your own artifact repositories
* Double-invoking: Great if you want your builds to take twice as long or even longer.

Even if any works for you temporarily, Gradle does a lot of work to ensure quick build times (which actually slow Nix build times) which makes it less deterministic. You'll find that your builds are not deterministic and have to fix them every time and also every time they take half an hour.
