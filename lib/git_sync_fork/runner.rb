require "thor"
require "git_sync_fork"

module GitSyncFork
  class Runner < Thor
    # To use run metdhos
    include Thor::Actions

    desc "sync", "Sync upstream/master with current branch and push to origin"
    def sync(upstream = "upstream", branch = "master", origin = "origin")
      # sync local and origin
      run "git pull"
      # sync local and upstream
      run "git fetch #{upstream}"
      run "git merge #{upstream}/#{branch}"
      # push to origin
      current_branch = `git symbolic-ref --short HEAD`
      run "git push #{origin} #{current_branch}"
    end
    default_task :sync
  end
end
