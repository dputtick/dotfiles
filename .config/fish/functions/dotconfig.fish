function dotconfig
    git --git-dir=$HOME/dev/dotfiles --work-tree=$HOME $argv
end
