---
tags: definition
---

# Staging area
(Also called the *index* or the *cache*)

The staging area is a separate area from your current [[working-directory]] and the repository (historical) contents. When working on your working directory, you can add files (or [[git/hunk|hunks]]) to the staging area in order to signify to git that you want to add them to your next commit. When committing, only contents added to the staging area make it into the commit.

You can add files to the staging area by running `git add «file»`.

### But why?
The staging area is always hard to grasp for beginners to git. Why keep a separate area for changes that'll make it into the commit? Other VCSs don't have it so it also makes it hard to map to pre-existing knowledge. Some utilities of the staging area come to mind:

#### As a buffer for your changes
When you're starting to work, it's hard to really decide what will go into your next commit. Usually, you just start working and slowly discover the changes you have to make to implement your feature. The staging area allows to cleanly separate your working copy (the [[working-directory]]) from a cohesive, atomic set of changes you can make into a commit.

For example, suppose you're implementing **Feature A**, which requires a refactor in **Feature B** that will also enhance **Feature B**'s functionality. You'll only discover this when you're working on **Feature A** and find yourself modifying a lot of code for **Feature B**. Since your changes to **Feature B** are useful on their own, but you've also been working on **Feature A** at the same time, you can just add your changes to **Feature B** to the staging area and commit it separately from **Feature A**. In the future, if problems arose, this would allow you to revert your changes to **Feature A** without also reverting your changes to **Feature B**. Alsom, it'd be easier to debug whether an issue was introduced by **Feature A** or **Feature B** by using tools like [[bisect]].

#### As a buffer for git's changes
In a lot of situations, git will use the staging area to specify changes that are ready for a commit, and separate them from those that aren't. For example, when doing a [[merge]], files without conflicts will be added to the staging area, while those with conflicts will stay in your working directory.

It can also be used creatively, for modifying a previous commit without affecting your current one with [[amend]], or by running `git reset --soft «commit»`, you'll go to another commit, but keep your current changes in the staging area so you can branch off a different commit.

### Can't you just skip it?
You can run `git commit -a` to automatically add all changes files to the staging area at commit time, but this won't affect any new files. You can do as I did, and create an alias like `am="git add . && git commit -m"` to automatically add everything before a commit.

However, this is not really a good practice, and as you get experience with git you'll come to hate it. This prevents you from making small cohesive commits and just makes you lump all changes into a single one every time.
