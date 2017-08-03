if [ -f $HOME/.zplug ]; then
    git clone https://github.com/zplug/zplug $HOME/.zplug
    source $HOME/.zshrc
fi


if [ -f $HOME/.pyenv ]; then
    git clone https://github.com/pyenv/pyenv ~/.pyenv
    git clone https://github.com/pyenv/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv

    cat <<'EOF' >> $HOME/.zshrc
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
    EOF
fi
