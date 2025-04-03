# source-highlight
if type src-hilite-lesspipe.sh >/dev/null 2>&1; then
    export LESSOPEN="| src-hilite-lesspipe.sh %s"
    export LESS="-R"
fi

# colordiff
if type colordiff >/dev/null 2>&1; then
    alias diff='colordiff -u'
else
    alias diff='diff -u'
fi

# pipx
if type pipx >/dev/null 2>&1; then
    export PATH="${HOME}/.local/bin:${PATH}"
fi

# anyenv
if type anyenv >/dev/null 2>&1; then
    eval "$(anyenv init -)"
fi

# iterm2
if [[ -e "${HOME}/.iterm2_shell_integration.zsh" ]]; then
    source "${HOME}/.iterm2_shell_integration.zsh"
fi

# rust
if type cargo >/dev/null 2>&1; then
    export PATH="${HOME}/.cargo/bin:${PATH}"
fi
