# Branching and merging

Which branch am I on?

	git status

What branches does the remote have?

	git ls-remote

Start tracking a remote branch and switch to it:

	git checkout --track origin/2019-20
	
Merge in another branch

	git merge master

Which branch am I on?

	git status
	
# Handling a pull request

See which remote branches you've already added:

	git remote show

Add the remote branch if new:

	git remote add earcanal https://github.com/earcanal/rminr

Checkout the remote branch

	git checkout -b projscript earcanal/master
	
See what's the contributor has changed

	git diff 2019-20...projscript
	
Merge with another branch:

	git checkout 2019-20
	git merge projscript
