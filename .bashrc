# ~/.bashrc
# The individual per-interactive-shell startup file.

# Source global definitions.
if [ -r /etc/bashrc ]; then
    . /etc/bashrc
fi

if ! pgrep -u "$USER" ssh-agent >/dev/null; then
    ssh-agent -t 1h >"$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# Define user specific aliases and functions.
