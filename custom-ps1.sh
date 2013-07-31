export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

export PS1='$(git branch &>/dev/null;\
        if [ $? -eq 0 ]; then \
                echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
                if [ "$?" -eq "0" ]; then \
                        # @4 - Clean repository - nothing to commit
                        echo "\n--------'$IWhite$Time12h$Color_Off' ""'$IBlue'""\u@\h""'$Green'"$(__git_ps1 " (%s)"); \
                else \
                # @5 - Changes to working tree
                echo "\n--------'$IWhite$Time12h$Color_Off' ""'$IBlue'""\u@\h""'$IRed'"$(__git_ps1 " {%s}"); \
                fi) '$Yellow$PathShort$Color_Off'\n'±' "; \
        else \
                  # @2 - Prompt when not in GIT repo
                  echo "[ '$IWhiteBlack$Time12h$Color_Off' ""'$IBlue'""\u@\h ""'$Yellow$PathShort$Color_Off' ] \$ "; \
        fi)'

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

alias link_home='cd ~/gitHome/LINK_CODE/'
alias link_archive='cd ~/gitHome/LINK_CODE/LINK_ARCHIVE'
alias link_sg2_storefronts='cd ~/gitHome/LINK_SG2_Storefronts'
