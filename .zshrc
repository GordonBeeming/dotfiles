# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias code="open -n -a 'Visual Studio Code - Insiders' --args $*"
# export PATH="$PATH:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"
alias code=code-insiders
alias guid='uuidgen | { read message; echo "$message ... clipboard mate"; echo -n $message | pbcopy }'
alias reload="source ~/.zshrc"
alias gitclean="git clean -fX"
alias cop="copilot_yolo -d"

# cd ~
# mkdir -p jetbrains
export PATH="$PATH:/Users/gordonbeeming/jetbrains"

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh"  # This loads nvm
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix nvm)/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

export PATH="$PATH:/Users/gordonbeeming/.dotnet/tools"

export PATH="$PATH:/Developer/shell"

alias cls=clear
alias size="du -sh"
alias ".."="cd .."

alias nuget="mono /usr/local/bin/nuget.exe"

alias testssl_update="docker pull drwetter/testssl.sh"
alias testssl="docker run --rm -ti drwetter/testssl.sh"
# alias cloc="docker run --rm -v $PWD:/tmp aldanial/cloc"

alias "clear-ds-store"="find . -name ".DS_Store" -type f -delete"
alias "clear-bins"="find . -type d -name "bin" -exec rm -rf {} +"
alias "clear-objs"="find . -type d -name "obj" -exec rm -rf {} +"

export OP_BIOMETRIC_UNLOCK_ENABLED=true
export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

eval "$(rbenv init - zsh)"
# pnpm
export PNPM_HOME="/Users/gordonbeeming/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# copilot_here shell functions
# Version: 2025-10-27
# Repository: https://github.com/GordonBeeming/copilot_here

# Helper function for security checks (shared by all variants)
__copilot_security_check() {
  if ! gh auth status 2>/dev/null | grep "Token scopes:" | grep -q "'copilot'"; then
    echo "❌ Error: Your gh token is missing the required 'copilot' scope."
    echo "Please run 'gh auth refresh -h github.com -s copilot' to add it."
    return 1
  fi

  if gh auth status 2>/dev/null | grep "Token scopes:" | grep -q -E "'(admin:|manage_|write:public_key|delete_repo|(write|delete)_packages)'"; then
    echo "⚠️  Warning: Your GitHub token has highly privileged scopes (e.g., admin:org, admin:enterprise)."
    printf "Are you sure you want to proceed with this token? [y/N]: "
    read confirmation
    local lower_confirmation
    lower_confirmation=$(echo "$confirmation" | tr '[:upper:]' '[:lower:]')
    if [[ "$lower_confirmation" != "y" && "$lower_confirmation" != "yes" ]]; then
      echo "Operation cancelled by user."
      return 1
    fi
  fi
  return 0
}

# Helper function to cleanup unused copilot_here images
__copilot_cleanup_images() {
  local keep_image="$1"
  echo "🧹 Cleaning up unused copilot_here images..."
  
  # Get all copilot_here images with the project label
  local images_to_remove=$(docker images --filter "label=project=copilot_here" --format "{{.Repository}}:{{.Tag}}" | grep -v "^${keep_image}$" || true)
  
  if [ -z "$images_to_remove" ]; then
    echo "  ✓ No unused images to clean up"
    return 0
  fi
  
  local count=0
  while IFS= read -r image; do
    if [ -n "$image" ]; then
      echo "  🗑️  Removing: $image"
      docker rmi "$image" > /dev/null 2>&1 && ((count++)) || echo "  ⚠️  Failed to remove: $image"
    fi
  done <<< "$images_to_remove"
  
  echo "  ✓ Cleaned up $count image(s)"
}

# Helper function to pull image with spinner (shared by all variants)
__copilot_pull_image() {
  local image_name="$1"
  printf "📥 Pulling latest image: ${image_name}... "
  
  (docker pull "$image_name" > /dev/null 2>&1) &
  local pull_pid=$!
  local spin='|/-\'
  
  local i=0
  while ps -p $pull_pid > /dev/null; do
    i=$(( (i+1) % 4 ))
    printf "%s\b" "${spin:$i:1}"
    sleep 0.1
  done

  wait $pull_pid
  local pull_status=$?
  
  if [ $pull_status -eq 0 ]; then
    echo "✅"
    return 0
  else
    echo "❌"
    echo "Error: Failed to pull the Docker image. Please check your Docker setup and network."
    return 1
  fi
}

# Core function to run copilot (shared by all variants)
__copilot_run() {
  local image_tag="$1"
  local allow_all_tools="$2"
  local skip_cleanup="$3"
  local skip_pull="$4"
  shift 4
  
  __copilot_security_check || return 1
  
  local image_name="ghcr.io/gordonbeeming/copilot_here:${image_tag}"
  
  echo "🚀 Using image: ${image_name}"
  
  # Pull latest image unless skipped
  if [ "$skip_pull" != "true" ]; then
    __copilot_pull_image "$image_name" || return 1
  else
    echo "⏭️  Skipping image pull"
  fi
  
  # Cleanup old images unless skipped
  if [ "$skip_cleanup" != "true" ]; then
    __copilot_cleanup_images "$image_name"
  else
    echo "⏭️  Skipping image cleanup"
  fi

  local copilot_config_path="$HOME/.config/copilot-cli-docker"
  mkdir -p "$copilot_config_path"

  local token=$(gh auth token 2>/dev/null)
  if [ -z "$token" ]; then
    echo "⚠️  Could not retrieve token using 'gh auth token'. Please ensure you are logged in."
  fi

  local docker_args=(
    --rm -it
    -v "$(pwd)":/work
    -v "$copilot_config_path":/home/appuser/.copilot
    -e PUID=$(id -u)
    -e PGID=$(id -g)
    -e GITHUB_TOKEN="$token"
    "$image_name"
  )

  local copilot_args=("copilot")
  if [ $# -eq 0 ]; then
    copilot_args+=("--banner")
  else
    copilot_args+=("-p" "$*")
  fi
  
  if [ "$allow_all_tools" = "true" ]; then
    copilot_args+=("--allow-all-tools")
  fi

  docker run "${docker_args[@]}" "${copilot_args[@]}"
}

# Safe Mode: Asks for confirmation before executing
copilot_here() {
  local image_tag="latest"
  local skip_cleanup="false"
  local skip_pull="false"
  local args=()
  
  # Parse arguments for image variant and control flags
  while [[ $# -gt 0 ]]; do
    case "$1" in
      -h|--help)
        cat << 'EOF'
copilot_here - GitHub Copilot CLI in a secure Docker container (Safe Mode)

USAGE:
copilot_here [OPTIONS] [PROMPT]

OPTIONS:
-d, --dotnet              Use .NET image variant
-dp, --dotnet-playwright  Use .NET + Playwright image variant
--no-cleanup              Skip cleanup of unused Docker images
--no-pull                 Skip pulling the latest image
-h, --help                Show this help message

EXAMPLES:
# Interactive mode
copilot_here

# Ask a question
copilot_here "how do I list files in bash?"

# Use .NET image
copilot_here -d "build this .NET project"

# Fast mode (skip cleanup and pull)
copilot_here --no-cleanup --no-pull "quick question"

MODES:
copilot_here  - Safe mode (asks for confirmation before executing)
copilot_yolo  - YOLO mode (auto-approves all tool usage)

VERSION: 2025-10-27
REPOSITORY: https://github.com/GordonBeeming/copilot_here
EOF
        return 0
        ;;
      -d|--dotnet)
        image_tag="dotnet"
        shift
        ;;
      -dp|--dotnet-playwright)
        image_tag="dotnet-playwright"
        shift
        ;;
      --no-cleanup)
        skip_cleanup="true"
        shift
        ;;
      --no-pull)
        skip_pull="true"
        shift
        ;;
      *)
        args+=("$1")
        shift
        ;;
    esac
  done
  
  __copilot_run "$image_tag" "false" "$skip_cleanup" "$skip_pull" "${args[@]}"
}

# YOLO Mode: Auto-approves all tool usage
copilot_yolo() {
  local image_tag="latest"
  local skip_cleanup="false"
  local skip_pull="false"
  local args=()
  
  # Parse arguments for image variant and control flags
  while [[ $# -gt 0 ]]; do
    case "$1" in
      -h|--help)
        cat << 'EOF'
copilot_yolo - GitHub Copilot CLI in a secure Docker container (YOLO Mode)

USAGE:
copilot_yolo [OPTIONS] [PROMPT]

OPTIONS:
-d, --dotnet              Use .NET image variant
-dp, --dotnet-playwright  Use .NET + Playwright image variant
--no-cleanup              Skip cleanup of unused Docker images
--no-pull                 Skip pulling the latest image
-h, --help                Show this help message

EXAMPLES:
# Interactive mode (auto-approves all)
copilot_yolo

# Execute without confirmation
copilot_yolo "run the tests and fix failures"

# Use .NET + Playwright image
copilot_yolo -dp "write playwright tests"

# Fast mode (skip cleanup)
copilot_yolo --no-cleanup "generate README"

WARNING:
YOLO mode automatically approves ALL tool usage without confirmation.
Use with caution and only in trusted environments.

MODES:
copilot_here  - Safe mode (asks for confirmation before executing)
copilot_yolo  - YOLO mode (auto-approves all tool usage)

VERSION: 2025-10-27
REPOSITORY: https://github.com/GordonBeeming/copilot_here
EOF
        return 0
        ;;
      -d|--dotnet)
        image_tag="dotnet"
        shift
        ;;
      -dp|--dotnet-playwright)
        image_tag="dotnet-playwright"
        shift
        ;;
      --no-cleanup)
        skip_cleanup="true"
        shift
        ;;
      --no-pull)
        skip_pull="true"
        shift
        ;;
      *)
        args+=("$1")
        shift
        ;;
    esac
  done
  
  __copilot_run "$image_tag" "true" "$skip_cleanup" "$skip_pull" "${args[@]}"
}
