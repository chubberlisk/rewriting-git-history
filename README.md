## Changing the most recent commit - Practical

### Task 1

Go to https://github.com/chubberlisk/rewriting-git-history.

Clone the repository:

```bash
git clone git@github.com:chubberlisk/rewriting-git-history.git
```
Change into `rewriting-git-history` directory.

```bash
cd rewriting-git-history
```

Create your own branch off of `0-practical`.

```bash
git checkout 0-practical

git checkout -b 0-practical-mah-branch-yall
```

### Task 2

Refactor `player == :player_one` into a private boolean method called `player_one?`

### Task 3

Using the table below, add the changes to the most recent commit i.e. a new commit isn't created and is instead part of the latest commit

| Task | Git Command |
|:--------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------:|
| Changing the message of the last commit.<br><br>E.g. you’ve misspelt something or want to make the commit message clearer. | `git commit --amend` |
| Changing the content and message of the last commit.<br><br>E.g. you forgot to stage a file relevant to the commit. | `git add . # or individual files`<br><br>`git commit --amend` |
| Changing the content and keeping the message of the last commit without opening your Git editor. | `git add . # or individual files`<br><br>`git commit --amend --no-edit` |
