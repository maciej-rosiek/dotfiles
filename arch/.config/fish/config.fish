if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/mrosiek/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Created by `pipx` on 2024-10-07 13:16:15
#set PATH $PATH /home/mrosiek/.local/bin

# bun
#set --export BUN_INSTALL "$HOME/.bun"
#set --export PATH $BUN_INSTALL/bin $PATH

# uv
fish_add_path "/home/mrosiek/.local/bin"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

set --global fish_prompt_pwd_dir_length 50

function zmvn
    mvn -s ~/.m2/settings-zalando.xml $argv
end

function rmvn
    mvn -s ~/.m2/settings-runbuggy.xml $argv
end

function gcam
    git add -A && git commit -m $argv
end
alias cc='claude --dangerously-skip-permissions'
