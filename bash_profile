# Allow t to list outstanding tasks by default
export TODOTXT_DEFAULT_ACTION=ls
export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort -k 2,2 -k 1,1n'

#Script shortcuts
alias t='/usr/local/Cellar/todo-txt/2.9/bin/todo.sh -d ~/.todo.cfg'
alias skim2pdf='/Applications/Skim.app/Contents/SharedSupport/skimpdf'
alias gittex='/Users/apc/.scripts/gittex.sh'
alias gitbx='/Users/apc/.scripts/Gitbx/gitbx.sh'
alias geeknote='python ~/.scripts/geeknote/geeknote.py'
alias nvremind='~/.scripts/nvremind.rb'

#Directory shortcuts
alias tblog='cd ~/Documents/Teaching/Phil355F13/octopress'
alias gblog='cd ~/Documents/Teaching/Phil742F13/octopress'
alias texfiles='cd ~/Library/texmf/tex/latex/apc\ tex\ files/'
alias texmacros='cd ~/Library/texmf/tex/latex/Macros/apc/'
alias texbib='cd ~/Library/texmf/bibtex/bib/biblios/master/'
alias apchome='cd ~/Documents/Websites/apc.github.com/'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

#Useful for shortening file paths to some of my folders, 
#especially for combining with the nav add-on for todo.txt
export INBOX="/Users/apc/Documents/Inbox"
export PDFS="/Users/apc/Documents/Inbox/PDFs"
export PROBONO="/Users/apc/Documents/Inbox/PendingFeedback"
export MASTERBIB="/Users/apc/Library/texmf/bibtex/bib/biblios/master/"
export VCFILES="/Users/apc/Library/texmf/tex/latex/vc-files/"
export APCTEX="/Users/apc/Library/texmf/tex/latex/apc tex files/"
export APCSTY="/Users/apc/Library/texmf/tex/latex/Macros/apc/"

# Enable shims and autocompletion.
eval "$(rbenv init -)"


# export PATH="$HOME/.rbenv/bin:$PATH"

# export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# export PATH="$PATH:/Users/apc/.rbenv/versions/1.9.3-p0/lib/ruby/gems/1.9.1:/Users/apc/.gem/ruby/1.9.1"

# Not sure what for
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin"

# Pandoc?
export PATH="$PATH:/Users/apc/.cabal/bin"

# Ruby and gems
export PATH="$PATH:/Users/apc/.rbenv/versions/1.9.3-p0/lib/ruby/gems/1.9.1:/Users/apc/.gem/ruby/1.9.1"

# Access to the rbenv command-line utility
export PATH="/Users/apc/.rbenv/bin:/Users/apc/.rbenv/shims:$PATH"

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Somehow this is giving me an error message
# source "`brew --prefix grc`/etc/grc.bashrc"

# For bash-completion via homebrew
if [ -f `brew --prefix`/etc/bash_completion ]; then
 . `brew --prefix`/etc/bash_completion
fi

_expand()
{
  return 0  
}

# Enable bash completion for todo.sh's alias
complete -F _todo t

# Change Terminal prompt
export PS1="\u@\h:\W\$ "
