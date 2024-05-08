# git
たまに忘れるオプションのメモ。

## Basics
- `git init`
- `git status`
- `git diff`
- `git add .`
- `git reset`
- `git commit`
- `git log`
- `git show -m`
- `git config --list --global`

## Advanced
- `git commit -m "u dont like vi? use -m"`
- `git commit --amend`  
	定番、直前コミット打ち直し！
- `git reset --hard`
- `git status --ignored`
- `git switch -c Cool-Branch-Name`  
	- `git switch Cool-Branch-Name`
	- `git switch -`
- `git checkout head deleted_file.txt`

## Pro?
- `git push`
	- `git pull`
	- `git fetch --prune`
	- `git fetch origin <source-branch>:<dest>`
- `git merge --no-ff <branch-name>`
	- `git revert`
- `git cherry-pick <sugoi-commit>`
- `git branch --delete <branch-name>`
	- `git branch -D <branch-name>`
- `git push --delete origin <branch-name>`
- `git show head -m`
	- `git diff head~ head`
	- `git diff --name-status`
	- `git diff --staged`
- `git remote -v`
- `git add ignored-filename.txt -f`
- `git rm --cached ./objectfile-in-compiled.o`
- `git log --oneline`
- `git ls-tree head`
- `dotnet new gitignore`

## Chotto dekiru
- `git push --force-with-lease --if-no-includes`  
	自分のコミットが最新のときだけ `--force` したいとき。
- `git stash push`  
	`stash` 嫌いだったら `commit` & `cherry-pick` で代用とか。
	- `git stash pop`
	- `git stash list`
	- `git stash apply`
	- `git stash clear`
- ``git commit --amend --date `date -R` ``  
	更新日時 *author-date* も直したいとき。
	```$ date --help
	-R, --rfc-email            output date and time in RFC 5322 format.  
							   Example: Mon, 14 Aug 2006 02:34:56 -0600
	```
- `git reflog`
- `git log --graph`  
	ブランチのグラフがでる！
- `git log --pretty=fuller`  
	*committer-date* もでる。  
- `git rebase head~2`
	- `--committer-date-is-author-date`  
	- `--root`  
		`git rebase -i <tag|commit>~ --committer-date-is-author-date`  
		*committer-date* をコミットを編集した日時の *author-date* に捏造できる。すごい！
- `GIT_COMMITTER_DATE='Mon May 17 21:50:51 2022 +0900'`  
	`git commit`  
	`git commit --date='Mon May 17 21:50:51 2022 +0900'`
	これと `rebase -i --root` とかで initial commit の *committer-date* を変更できる！  
	終わったら `unset GIT_COMMITTER_DATE` した方がいい気がする。  

1. *author-date*  
`git log` に出る方。
1. *committer-date*  
`git log` に出ない方。  
マージ後のコミットの並びはこっちが採用されるけど表向きは *author-date* なので、コミット順が不規則に見える。  
(Azure DevOps だけかも。裏取ってない)

