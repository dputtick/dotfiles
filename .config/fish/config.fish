set --universal fish_user_paths $fish_user_paths ~/.rbenv/shims
set --universal fish_user_paths $fish_user_paths /usr/local/opt/postgresql@13/bin
set --universal --export PYENV_ROOT $HOME/.pyenv
set --universal fish_user_paths $PYENV_ROOT/bin $fish_user_paths
set --universal fish_user_paths $fish_user_paths ~/.local/bin
set --universal dailies_path ~/dev/writing/dailies/
set --universal --export GOOGLE_APPLICATION_CREDENTIALS ~/terraform-keys.json
set --universal --export GOOGLE_ENCRYPTION_KEY ImqAQ9vzeVu55aGWtoI4RiZo2/fDA2Pw2oOaGc75FtI=

if command -v pyenv 1>/dev/null 2>&1
    pyenv init - | source
end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

if [ -f ~/google-cloud-sdk/path.fish.inc ]
    source ~/google-cloud-sdk/path.fish.inc
end
