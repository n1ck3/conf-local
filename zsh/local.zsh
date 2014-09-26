# zshrc local user configuration by Lowe Thiderman (daethorian@ninjaloot.se)
# Released under the WTFPL (http://sam.zoy.org/wtfpl/).
#
# <github link>

# User settings {{{
    # Make sure we do not ls everytime we enter dirs. ;)
    export ZSH_NO_CHPWD="cunnie-o"
    BOX=$(uname)
# }}}

# Vagrant aliases {{{
    alias vh="vagrant ssh"
    alias vu="vagrant up"
    alias vs="vagrant status"
    alias vss="vagrant suspend"
    alias vr="vagrant resume"
    alias ve="vagrant reload"
    alias vp="vagrant provision"
    alias vh="vagrant halt"
    alias vi="vagrant init"
    alias vd="vagrant destroy"
    alias vb="vagrant box"
# }}}

# Tmux aliases {{{
    alias tls="tmux ls"
    alias ta="tmux attach"
# }}}

# User custom whatever {{{
    # Complete parent dir on $ ..<TAB>
    zstyle ':completion:*' special-dirs true

    # ntpdate
    # TODO: Fix plz.
    # alias ntp=""

    if [[ "$TERM" == "xterm" || "$TERM" == "rxvt-unicode-256color" ]] ; then
        export TERM="xterm-256color"
    fi

    if [[ "$BOX" == "Linux" ]] ; then
        alias open="xdg-open"
    fi

    # Make sure to unbreak ls on osx boxes
    if [[ $BOX == "Darwin" ]] ; then
      unalias ls
    fi

    # Make sure to unbreak ls on osx boxes
    if [[ $BOX == "Darwin" ]] ; then
      PATH="/usr/local/bin:/usr/local/sbin:$PATH"
      if [[ -f $HOME/.rvm/scripts/rvm ]] ; then
        source $HOME/.rvm/scripts/rvm
      fi
    fi
# }}}

# vim: ft=zsh fmr={{{,}}}
