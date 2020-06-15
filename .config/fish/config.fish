set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims
set --universal fish_user_paths $fish_user_paths /usr/local/opt/postgresql@9.6/bin
set --universal PYENV_ROOT $HOME/.pyenv
set --universal fish_user_paths $PYENV_ROOT/bin $fish_user_paths
set --universal dailies_path ~/dev/dailies/

if command -v pyenv 1>/dev/null 2>&1
    pyenv init - | source
end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
