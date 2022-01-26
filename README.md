# PR and branch

## Creating a PR
```
git clone https://github.com/TsarSPb/hello-world.git
cd .\hello-world\
git branch -a
> * master
>   remotes/origin/HEAD -> origin/master
>   remotes/origin/master
git checkout -b first-pr
> Switched to a new branch 'first-pr'
git commit -a -m "Add some details"
git push origin first-pr
> Enumerating objects: 5, done.
> Counting objects: 100% (5/5), done.
> Delta compression using up to 12 threads
> Compressing objects: 100% (2/2), done.
> Writing objects: 100% (3/3), 434 bytes | 434.00 KiB/s, done.
> Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
> remote: 
> remote: Create a pull request for 'first-pr' on GitHub by visiting:
> remote:      https://github.com/TsarSPb/hello-world/pull/new/first-pr
> remote:
> To https://github.com/TsarSPb/hello-world.git
>  * [new branch]      first-pr -> first-pr
```
Now a PR can be created on GitHub  
Check the [Pull requests tab on GitHub](https://github.com/TsarSPb/hello-world/pulls) and its subsections like *Commits* and *Files changed* to review (and, hopefully, approve) PRs.

## Deleting branch after a PR
The branch can be safely deleted after merging
> The deleted branch can be restored from GitHub UI - check the *Restore branch* button at the bottom of the closed PR.
```
git stash # use it if you forgot to commit some changes before merging
git checkout master # have to switch branch before deleting it
git branch -d first-pr 
git push origin --delete first-pr # deleting and pushing
> To https://github.com/TsarSPb/hello-world.git
>  - [deleted]         first-pr
git pull origin # pulling current state
> remote: Counting objects: 100% (1/1), done.
> Unpacking objects: 100% (1/1), 636 bytes | 5.00 KiB/s, done.
>  * branch            master     -> FETCH_HEAD
> Updating f893125..44315f0
> Fast-forward
>  README.md | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
git checkout -d second-pr # creating a new branch for the second PR
git stash apply # use it if you have some code hidden in the stash
> On branch second-pr
> Changes not staged for commit:
>   (use "git add <file>..." to update what will be committed)
>   (use "git restore <file>..." to discard changes in working directory)
>         modified:   README.md
> 
> no changes added to commit (use "git add" and/or "git commit -a")
git commit -a -m "Added info about stashing and deleting old branches. All set for the second PR"
git push origin second-pr
```

# GitHub Actions
Added a sample action with a basic workflow

## Building Docker image
```
docker build -t tsarspb/sandkasten:v1 -t tsarspb/sandkasten:latest .
docker login -u tsarspb
docker push tsarspb/sandkasten:latest tsarspb/sandkasten:v1
```
