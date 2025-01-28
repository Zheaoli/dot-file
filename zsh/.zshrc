# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#source /anaconda/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
# Path to your oh-my-zsh installation.
export ZSH=/home/manjusaka/.oh-my-zsh
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
alias pc="proxychains4"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="bullet-train"
#ZSH_THEME=spaceship
export DEFAULT_USER=manjusaka@Ubuntu
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)
POWERLEVEL9K_ANACONDA_BACKGROUND='yellow'
POWERLEVEL9K_PROMPT_ON_NEWLINE='false'
POWERLEVEL9K_DIR_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_CONTEXT_TEMPLATE="%n@Ubuntu"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="006"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="235"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python rust macos autojump zsh-syntax-highlighting pip git-flow git-flow-completion zsh-autosuggestions wd docker zsh-syntax-highlighting z brew terraform wakatime kube-ps1)
BULLETTRAIN_PROMPT_ORDER=(
  virtualenv
  context
  dir
  #time
  git
)
PROMPT='$(kube_ps1)'$PROMPT
BULLETTRAIN_GIT_BG='green'
source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=$PATH:/usr/local/mysql/bin:/Users/manjusaka/Downloads/FDK/Tools/macos

export GOPATH=/home/manjusaka/Documents/projects/go_project
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export GOROOT=/usr/lib/go
export GOBIN=$GOROOT/bin
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export GO111MODULE=auto
source <(fzf --zsh)
export KUBECONFIG=/Users/manjusaka/kbectl.config
alias ls="exa -l --git -G --color-scale -h -a --group-directories-first"
alias jumpserver="ssh blj.elenet.me -l zheao.li"
export PATH=/data/soft/gradle-4.9/bin:/data/soft/maven/bin:$HOME/.cargo/bin:$PATH:~/data/soft/maven/bin:~/data/soft/gradle-4.9/bin

#export IDEA_JDK=$JAVA_HOME
alias ctags='/usr/local/bin/ctags'
export GOPRIVATE="gitee.com/metron,github.com/DeBankDeFi,github.com/Chaintable"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$GOBIN:$PATH:$HOME/.rvm/bin"

#To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-"/home/manjusaka/.local/share/lunarvim"}"
export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-"/home/manjusaka/.config/lvim"}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-"/home/manjusaka/.cache/nvim"}"
#alias vim="nvim -u $LUNARVIM_RUNTIME_DIR/lvim/init.lua"
export LANG=en_US.UTF-8
alias k=kubectl
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#eval "$(starship init zsh)"
#alias docker="lima sudo nerdctl"
export GONOSUMDB="github.com/DeBankDeFi/*,github.com/Chaintable/*"
export HISTSIZE=1000000
export SAVEHIST=1000000
setopt EXTENDED_HISTORY
#export ATUIN_NOBIND="true"
#eval "$(atuin init zsh)"
#
#bindkey '^r' _atuin_search_widget
#
## depends on terminal mode
#bindkey '^[[A' _atuin_search_widget
#bindkey '^[OA' _atuin_search_widget

# pnpm
export PNPM_HOME="/Users/manjusaka/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="/snap/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin:/usr/local/zig
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export GPG_TTY=$(tty)
export JAVA_HOME=/usr/lib/jvm/jdk-17/
export PATH=$PATH:$JAVA_HOME/bin
eval $(opam env)
# pnpm end

# Load Angular CLI autocompletion.
#source <(ng completion script)
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$JAVA_HOME/bin:$PATH
export LANG=en_US.UTF-8
export PATH=$PATH:/opt/clang/latest/bin
source /home/manjusaka/.config/op/plugins.sh
source /opt/asdf-vm/asdf.sh
export BROWSER=google-chrome-stable
