# git sync

Helps to sync a fork to keep it up-to-date with the upstream as 
[described](https://help.github.com/articles/syncing-a-fork/).

* `git pull` first to sync with origin and current branch
* fetch upstream and merge to upstream/master
* push current branch to origin

## Installation

    $ sudo gem install git_sync_fork

## Usage

    $ git sync

If you use different name for remote and branch names, then

    $ git sync upstream_name branch_name origin_name


