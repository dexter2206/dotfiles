if status is-interactive
    # Commands to run in interactive sessions can go here
end

set --export PYENV_ROOT $HOME/.pyenv

pyenv init - fish | source
pyenv virtualenv-init - | source
