# oh-my-posh
oh-my-posh init fish --config ~/.mytheme.omp.json | source

function fish_greeting
    fortune | cowsay -s | lolcrab -g viridis
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2022-10-02 16:00:26
set PATH $PATH /home/joe/.local/bin

# Mojo!
set MODULAR_HOME /home/joe/.modular
set PATH $PATH /home/joe/.modular/pkg/packages.modular.com_mojo/bin

# zoxide
zoxide init fish | source

# tmuxifier
eval (tmuxifier init - fish)
alias tmx="tmuxifier load-session development"

# Set up fzf key bindings
fzf --fish | source
