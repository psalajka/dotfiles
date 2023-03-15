# dotfiles

This is my dotfiles tracker. It is a git repository in a home directory. Everything is ignored by default, therefore only hand-selected files are tracked.

Prepare local repository.
```bash
cd
git init .
git remote add origin git@github.com:psalajka/dotfiles.git
git fetch
```

Pull all files from remote repository, but prevent overwriting of any local file.
```bash
for FILENAME in $(git diff --name-only origin/master) ; do git add -f $FILENAME ; done
git commit -m "WIP"
git rebase -Xtheirs origin/master
```

Setup upstream tracking.
```bash
git branch --set-upstream-to=origin/master
```

Investigate changes
```bash
git reset HEAD~1
```
