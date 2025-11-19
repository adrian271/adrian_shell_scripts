# This will show you more detail in your .zsh_history, copied to your editor

ALIAS_FILE="$HOME/.zsh_aliases"
[ -f "$ALIAS_FILE" ] && source "$ALIAS_FILE"


setopt EXTENDED_HISTORY

# requires gawk, get from `brew install gawk`
hist() {
  gawk -F';' '
    /^: [0-9]+:/ {
      split($1, meta, ":");
      ts = meta[2];
      cmd = substr($0, index($0, ";") + 1);
      printf "%s  %s\n", strftime("%Y-%m-%d %H:%M:%S", ts), cmd;
    }
  ' ~/.zsh_history | less > ~/.zsh_history_readable.txt && code ~/.zsh_history_readable.txt
}

alias zsh_history="hist"