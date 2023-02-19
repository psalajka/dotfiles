# dotfiles

Prepare local repository.
```bash
git init .
git remote add origin git@github.com:psalajka/dotfiles.git
git fetch
```

Pull all files from remote repository, but prevent overwriting of local files.
```bash
for FILENAME in $(git diff --name-only origin/master) ; do git add -f $FILENAME ; done
git commit -m "WIP"
git rebase origin/master
```

Setup upstream tracking.
```bash
git branch --set-upstream-to=origin/master
```

Investigate changes
```bash
git reset HEAD~1
```
