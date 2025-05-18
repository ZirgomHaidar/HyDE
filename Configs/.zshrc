# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add user configurations here
# For HyDE to not touch your beloved configurations,
# we added 2 files to the project structure:
# 1. ~/.hyde.zshrc - for customizing the shell related hyde configurations
# 2. ~/.zshenv - for updating the zsh environment variables handled by HyDE // this will be modified across updates

#  Plugins 
# oh-my-zsh plugins are loaded  in ~/.hyde.zshrc file, see the file for more information

#  Aliases 
# Add aliases here
alias op="xdg-open"
alias ga="git add"
alias gap="git add --patch"
alias gs="git status"
alias gd="git diff --output-indicator-new=' ' --output-indicator-old=' '"
alias gc="git clone"
alias gl="git log"
alias glo="git log --oneline"
alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n"'
alias gcpc="git cherry-pick --continue"
alias gcp="git cherry-pick"
alias gp='git push'
alias gu='git pull'
alias rs="repo sync -c --no-clone-bundle --force-remove-dirty --optimized-fetch --prune --force-sync -j$( nproc --all )"
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsched='echo "schedutil" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias ff="fastfetch"
alias mkb="mka bacon"
alias mic="mka installclean"
alias lzd='lazydocker'

#  This is your file 
# Add your configurations here
# export EDITOR=nvim
export EDITOR=code
export MANPAGER="nvim +Man!"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
