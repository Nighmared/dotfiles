if status is-interactive
    # Commands to run in interactive sessions can go here
    set -Ux PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin

end

# remove greeting message by setting it to ""
set fish_greeting

#pathpathpath
set -gx PATH $PATH $HOME/.krew/bin
set -gx PATH $PATH $HOME/.local/bin
set -gx PATH $PATH $HOME/go/bin
set -gx PATH $PATH $HOME/bin
set -gx PATH $PATH $HOME/.codon/bin
set -gx PATH $PATH $HOME/.cargo/bin
set -gx PATH $PATH $HOME/intel/oneapi/advisor/latest/bin64

set -gx PATH $PATH $HOME/.local/share/flutter/bin
set -gx PATH $PATH $HOME/Android/Sdk/cmdline-tools/latest/bin

#gopath
set -x GOPATH $HOME/go
#DONT -U with set aaa

set -x CHROME_EXECUTABLE google-chrome

alias getvenv="source .venv/bin/activate.fish"

set -x THESIS_PATH $HOME/Documents/ETH/master_thesis/cluster_test/utils
alias thesisutil="$THESIS_PATH/cli/cli"
alias tu=thesisutil

#LUA DEPENDENCY HELL OMG
eval "$(luarocks --lua-version 5.1 path)"

alias getsecret="jq '.data.value' -r | base64 --decode | cut -c 1-"

alias theme="npx alacritty-themes"

#homeserver
set -x defaultbrowser xdg-settings get default-web-browser | cut -d "." -f 1
alias tunnelproxmox="echo https://localhost:8080; ssh -L 8080:localhost:8006 raava.wg"
alias mountsokka="sshfs -o ssh_command=\"ssh -t raava.nighmared.ch ssh\" sokka.raava.wg:/  ~/sokka_mp"
alias tunnelproxy="echo http://localhost:2222; ssh -L 2222:localhost:81 proxy.raava.wg "

#pyenv 
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

#tmuxinator
alias mux="tmuxinator"

#convenience
alias eraava="code ~/Documents/projects/raava-compose"

#yeet
set -x DOTNET_CLI_TELEMETRY_OPTOUT

#atuin
atuin init fish | source

#remote sokka docker access
alias sokdok="export DOCKER_HOST=ssh://sokka.raava.wg"
alias sokkadocker=sokdok
alias resetdocker="set -e DOCKER_HOST"
