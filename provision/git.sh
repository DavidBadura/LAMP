#!/usr/bin/env bash

git config --global user.name "$CONFIG_USER_NAME"
git config --global user.email "$CONFIG_USER_EMAIL"
git config --global core.editor vim # oder ein anderen editor wie zum beispiel nano

git config --global color.ui auto
git config --global core.excludesfile '~/.gitignore'
git config --global push.default "current"

# rebase setting
git config --global branch.autosetuprebase always
git config --global pull.rebase preserve
git config --global alias.pull 'pull --rebase'

# under consideration
# git config --global core.autocrlf input

git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.staged 'diff --cached'

git config --global alias.changes "!git log --name-status HEAD.."
git config --global alias.graph "log --graph --all --pretty=format:'%Cred%h%Creset - %Cgreen(%cr)%Creset %s%C(yellow)%d%Creset' --abbrev-commit --date=relative"
git config --global alias.fup "log --since '1 day ago' --oneline --author [email]"
# pretty one-line log with tags, branches and authors
git config --global alias.ls "log --pretty=format:\"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]\" --decorate --date=short"
# a verbose ls, shows changed files too
git config --global alias.lsv "log --pretty=format:\"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]\" --decorate --date=short --numstat"
git config --global alias.stash-unapply '!git stash show -p | git apply -R'

alias git-delete-merged-branches='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias git-show-unrebased-branches='{ git br --contains master; git br; } | sort | uniq -u'
alias git-checkout-all-delete-files='git ls-files -d | xargs git checkout --'