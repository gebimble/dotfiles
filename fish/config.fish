# oh-my-posh
oh-my-posh init fish | source

function fish_greeting
    fortune | cowsay -s | lolcat
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /home/joe/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# pyenv stuff
# pyenv init - | source

# Created by `pipx` on 2022-10-02 16:00:26
set PATH $PATH /home/joe/.local/bin

# Mojo!
set MODULAR_HOME /home/joe/.modular
set PATH $PATH /home/joe/.modular/pkg/packages.modular.com_mojo/bin

# zoxide
zoxide init fish | source
