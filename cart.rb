git init
git add .
git commit -m 'message'
git remote add origin git@github.com:gomenassaai/student-directory
git push -u origin master

rm -rf .git

git help
git help config
git checkout master
git checkout a1833e4ef4a1b <- SHA hash of specific commit

git pull origin master
git pull
git clone

ps 
ps x 

git checkout --LICENCE (or any other file name, and it will blow away all changes since last commit)

git commit -a -m 'modify readme'

git reset --soft HEAD^ (undo last commit, reset into staging)

git commit --amend -m 'modify readmee and add todo.txt'
 
git reset --hard HEAD^ (undo last commit and all changes)

git remote -v

git pull

 git remote add <name> <address>
 git remote rm <name>
 git push -u <name> <branch>

heroku login
heroku create

git push heroku master

git clone url git-demo

git branch cat 

git checkout cat 

git checkout master
git merge cat 

git branch -d cat 
git checkout -b admin
 
git checkout master
git branch
git pull

git pull = git fetch + git merge origin/master

git checkout -b shopping_cart
git push origin shopping_cart

git add
git commit
git push



git branch -r
git checkout shopping_cart
git remote show origin

removing a branch (only deletes the remote branch)
git push origin :shopping_cart

git branch -d shopping_cart (delete branch locally, but wont let you delete if you have commits you havent merged yet)
git branch -D shopping_cart (overrides all warning and deletes branch anyway)
 
git remote prune origin (cleans up stale/deleted branches)

heroku only deploys from master branch
so if you want to delpoy from other branch do this:
	git push heroku-staging staging:master (local:remote)
	this will push staging branch to heroku master

 use tags for release versioning

 git tag

 to add a new tag:
 git tag -a v0.0.3 -m 'version 0.0.3'
 git push --tags


 git fetch (pulls down any changes but doesnt merge them)
 git rebase (move changes to master which are not in origin/master to a temporary area, then runs all origin/master commits one at a time and then runs all the commits in temp area (again one at a time) on top )


e.g.
git checkout admin
git rebase master
git checkout master
git merge admin

e.g. 2
git fetch
git rebase
(then conflict happens)
git rebase --continue/--skip/--abort
git add README.txt
git rebase --continue

git log
git config --global color.ui true
git log --pretty=oneline
git log --pretty=format: "%h %ad- %s [%an]"
git log --oneline -p 
git log --oneline --stat
git log --oneline --graph
git log --until=1.minute.ago
git log --since=1.day.ago
git log --since=1.hour.ago
git log --since=1.month.ago --until=2.weeks.ago
git log --since=2000-01-10 --until=2012-12-21

git diff
git diff HEAD
git diff HEAD^^
git diff HEAD~5
git diff HEAD^..HEAD
git diff SHA..SHA (range of SHAs)
git log --oneline

git diff master bird (diff between branches)
git diff --since=1.week.ago --until=1.minute.ago

git blame index.html --date short

if you put experiments/ folder inside
	.git/info/exclude

got idea to ignore all log files by using .gitignore and adding this there:

logs/*.log


git rm README.txt (will remove the file)
git rm --cached development.log (will stop watching/tracking file for changes. Does not delete from file system, just from git)

git add .gitignore
git commit -m 'ignore all log files'

git config --list
git config user.email


git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit

git reflog

git rebase -i HEAD~3

git reset HEAD^


stashing - storing files in temp area so I can restore them at later time

git stash save (pushes stash on stack of stashes)

git checkout gerbils

git stash apply

git stash list

git stash apply stash@{1}











 

