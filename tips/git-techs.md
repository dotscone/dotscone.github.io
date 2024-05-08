# git
たまに忘れるオプションのメモ。

- `dotnet new gitignore`
- `git log --graph`  
- `git log --pretty=fuller`  
- `git fetch origin <source-branch>:<dest>`
- `git rm --cached ./objectfile-in-compiled.o`
- `git ls-tree head`
- `git push --force-with-lease --if-no-includes`  
- ``git commit --amend --date `date -R` ``  
	更新日時 *author-date* も直したいとき。
- `git rebase --committer-date-is-author-date -i <commit-id>`  
- `GIT_COMMITTER_DATE='Mon May 17 21:50:51 2022 +0900'`  
	`git commit`  
	`git commit --date='Mon May 17 21:50:51 2022 +0900'`
	これと `rebase -i --root` とかで initial commit の *committer-date* を変更できる！  
	終わったら `unset GIT_COMMITTER_DATE` した方がいい気がする。  

1. *author-date*  
`git log` に出る方。
2. *committer-date*  
`git log` に出ない方。  
マージ後のコミットの並びはこっちが採用されるけど表向きは *author-date* なので、コミット順が不規則に見える。  
(Azure DevOps だけかも。裏取ってない)

