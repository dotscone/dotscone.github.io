# git
よさげオプションのメモ。

- `git push --force-with-lease --force-if-includes`  
- `git log --graph`  
- `git log --pretty=fuller`  
- `git log --reflog`
- `git show --name-status`  
  `git diff --word-diff=porcelain`
- `git rm --cached ./objectfile-in-compiled.o`
- ``git commit --amend --date `date -R` ``  
	更新日時 *author-date* も直したいとき。
- `git rebase --committer-date-is-author-date -i <commit-id>`  
- `GIT_COMMITTER_DATE='Mon May 17 21:50:51 2022 +0900'`  
	`git commit`  
	`git commit --date='Mon May 17 21:50:51 2022 +0900'`
	これと `rebase -i --root` とかで initial commit の *committer-date* を改ざんできる。 
	終わったら `unset GIT_COMMITTER_DATE` した方がいい気がする。  

- `dotnet new gitignore`

1. *author-date*  
`git log` に出る方。
2. *committer-date*  
`git log` に出ない方。  
マージ後のコミットの並びはこっちが採用されるけど表向きは *author-date* なので、コミット順が不規則に見える。  
(Azure DevOps だけかも。裏取ってない)

# git config

```
alias.cp=cherry-pick
alias.ns=show --name-status
```

# alias

```sh
alias gis='git status'
alias gil="git log --date=short --pretty='format:%C(yellow)%h %C(green)%cd %C(blue)%an%C(red)%d %C(reset)%s' "
alias gip="git log --pretty=fuller --graph"
alias gid="git diff -w --word-diff=porcelain"
alias git-commit-id='git log --format="%h"'
alias gitlast='git-commit-id . | head -1 | git show '
alias gitref='git log --oneline --graph --reflog --pretty=format:"%C(yellow)%h%C(reset) %C(green)(%cr)%C(reset) %C(blue)%s%C(reset)" '
```
