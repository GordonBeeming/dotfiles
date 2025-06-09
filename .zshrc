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

# cd ~
# mkdir -p jetbrains
export PATH="$PATH:/Users/gordonbeeming/jetbrains"

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh"  # This loads nvm
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix nvm)/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

export PATH="$PATH:/Users/gordonbeeming/.dotnet/tools"

export PATH="$PATH:/Developer/shell"

# alias docker=podman

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


# # Load Angular CLI autocompletion.
# source <(ng completion script)

export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

eval "$(rbenv init - zsh)"
# pnpm
export PNPM_HOME="/Users/gordonbeeming/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gordonbeeming/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/gordonbeeming/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/gordonbeeming/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/gordonbeeming/google-cloud-sdk/completion.zsh.inc'; fi
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/gordonbeeming/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions


combinecode() {
  # Check if a file extension is provided as an argument
  if [ -z "$1" ]; then
    echo "🚨 Usage: combinecode <file_extension_without_dot>"
    echo "➡️  Example: combinecode cs"
    return 1
  fi

  local file_extension=$1
  local search_pattern="*.$file_extension"
  # Get the current directory's name for user-friendly messages
  local current_dir_display_name=${PWD##*/}

  echo "🔎 Searching for '$search_pattern' files in '$PWD'..."

  # For quick diagnostics, let's see what find sees in the current directory only
  echo "👀 Diagnostic find (current directory only, files matching pattern):"
  find . -maxdepth 1 -type f -name "$search_pattern" -print0 | xargs -0 -I {} echo "   Found by diagnostic: {}"
  echo "---"

  # The main pipeline to find, concatenate, and copy files
  find . -type f -name "$search_pattern" -print0 | xargs -0 sh -c '
    processed_any_files=false
    # "$0" (in this case "_") is the script name placeholder.
    # Actual file paths from xargs are in "$@".
    for file_path in "$@"; do
      # Basic check if file still exists (it should)
      if [ ! -f "$file_path" ]; then
        # This message goes to stderr, so it won''t be copied by pbcopy
        # echo "Warning: File not found by sh script: $file_path" >&2
        continue
      fi
      
      # Remove leading "./" for cleaner output if present
      clean_file_path=${file_path#./}
      
      printf "--- File: %s ---\n" "$clean_file_path"
      cat "$file_path"
      printf "\n\n" # Add two newlines for separation after each file content
      processed_any_files=true
    done

    if [ "$processed_any_files" = true ]; then
      exit 0 # Success, files were processed
    else
      exit 1 # No files were processed by the loop
    fi
  ' _ | pbcopy # "_" is a convention for the $0 argument to sh -c

  # Store PIPESTATUS elements immediately to avoid them being overwritten
  local find_status=${PIPESTATUS[1]}
  local xargs_status=${PIPESTATUS[2]} # This is the exit status of the sh -c script run by xargs
  local pbcopy_status=${PIPESTATUS[3]}

  echo "--- Debug Information ---"
  echo "Path: $PWD"
  echo "Search Pattern: '$search_pattern'"
  echo "PIPESTATUS: [find: $find_status, xargs(sh): $xargs_status, pbcopy: $pbcopy_status]"
  echo "-------------------------"

  # Now, let's check the xargs_status (which is the exit status of our sh -c script)
  if [ -z "$xargs_status" ]; then
    # This is the most likely cause for your "[: unknown condition: -eq" error
    echo "⁉️ Error: The script execution status (PIPESTATUS[2]) is unexpectedly empty!"
    echo "   This could indicate an issue with your shell environment or the pipeline setup in Warp."
  elif [ "$xargs_status" -eq 0 ]; then
    # sh -c exited with 0, meaning files were found and processed
    echo "✅ Combined content of '$search_pattern' files from '$current_dir_display_name/' copied to clipboard! ✨"
  elif [ "$xargs_status" -eq 1 ]; then
    # sh -c exited with 1, meaning its loop didn't process any files.
    # This could be because 'find' found no files, or there was an issue within the loop.
    if [ "$find_status" -eq 0 ]; then # 'find' command itself ran successfully.
        echo "🤔 No '$search_pattern' files were ultimately processed from '$current_dir_display_name/'."
        echo "   The 'find' command reported success, but no files were concatenated."
        echo "   Please check the 'Diagnostic find' output above. If it lists files, something in the processing loop might be amiss."
        echo "   Manually run: find . -type f -name \"$search_pattern\""
    else # 'find' itself reported an error.
        echo "⚠️ The 'find' command seems to have failed (exit status: $find_status)."
        echo "   Please check for error messages from 'find' or verify path and permissions."
    fi
  else
    # sh -c (run by xargs) exited with some other error code.
    echo "⚠️ An unexpected error occurred during script execution (xargs/sh exited with status: $xargs_status)."
  fi
  
  # It's good practice for shell functions to return a status
  if [ "$xargs_status" = "0" ]; then
    return 0 # Success
  else
    return 1 # Failure
  fi
}