# hello-world

# Creating a PR
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
Now PR can be created in GitHub  
Check the [Pull requests tab on GitHub](https://github.com/TsarSPb/hello-world/pulls) and its subsections like *Commits* and *Files changed* to review PRs.