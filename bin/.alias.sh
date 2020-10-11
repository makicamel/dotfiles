alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ll='ls -al'

alias g='git'
alias gl='cd $(ghq list -p | peco)'
alias ghub='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias cop='git branch --all | tr -d "* " | grep -v -e "->" | peco | sed -e "s+remotes/[^/]*/++g" | xargs git checkout'
alias diff='git diff'
alias push='git push'
alias pushup='git push -u'
alias stash='git stash'
alias cherry-pick='git cherry-pick'
alias clean='git branch --merged|egrep -v "\*|develop|master"|xargs git branch -d'
alias gg='git graph'
alias opr=git-open-pr.sh

alias be='bundle exec'
alias ber='bundle exec bin/rspec'
alias ras='bundle exec rails s -p 3000 -e development -b 0.0.0.0'

alias ocaml='rlwrap ocaml'

alias mu='killall afplay'
