alias ls='clear && ls -lhp'
alias dc="docker-compose"
alias currentTime='date "+%Y-%m-%d %H:%M:%S" | tr -d '\n' | pbcopy' # adds a timestampe like 2025-11-18 23:11:11 to your OS clipboard
alias gitbranch="git for-each-ref --sort=-committerdate --format='%(refname:short) - %(committerdate:relative)' refs/heads/" # shows all branches with the age of their most recent commit