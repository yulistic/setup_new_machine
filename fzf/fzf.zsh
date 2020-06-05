# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/yulistic/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/yulistic/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/yulistic/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/yulistic/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
