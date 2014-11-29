if [ -f ~/.bashrc ]; then
        source ~/.bashrc
fi

PATH=$(brew --prefix homebrew/php/php55)/bin:$PATH:$HOME/bin
export PATH

# Turn off standout; turn off underline
tput sgr 0 0
 
# Base styles and color palette
# If you want to check color code, run `./testcolor.sh'
RESET=$(tput sgr0)
FS_BOLD=$(tput bold)
FC_BLACK=$(tput setaf 0)
FC_RED=$(tput setaf 1)
FC_GREEN=$(tput setaf 2)
FC_YELLOW=$(tput setaf 3)
FC_BLUE=$(tput setaf 4)
FC_MAGENTA=$(tput setaf 5)
FC_CYAN=$(tput setaf 6)
FC_WHITE=$(tput setaf 255)
FC_ORANGE=$(tput setaf 172)

STYLE_TIME="\[${FS_BOLD}${FC_GREEN}\]"
STYLE_HOST="\[${RESET}${FC_MAGENTA}\]"
STYLE_USER="\[${RESET}${FC_ORANGE}\]"
STYLE_PATH="\[${RESET}${FC_BLUE}\]"
STYLE_CHARS="\[${RESET}${FC_WHITE}\]"
STYLE_GIT_BRANCH="${FC_YELLOW}"
STYLE_GIT_STATE="${FC_GREEN}"
 
function is_git_repo() {
    $(git rev-parse --is-inside-work-tree &> /dev/null)
}
 
function is_git_dir() {
    $(git rev-parse --is-inside-git-dir 2> /dev/null)
}
 
function get_git_branch() {
    local BRANCH_NAME
 
    # Get the short symbolic ref
    BRANCH_NAME=$(git symbolic-ref --quiet --short HEAD 2> /dev/null) ||
    # If HEAD isn't a symbolic ref, get the short SHA
    BRANCH_NAME=$(git rev-parse --short HEAD 2> /dev/null) ||
    # Otherwise, just give up
    BRANCH_NAME="(unknown)"
 
    printf $BRANCH_NAME
}
 
# Git status information
function prompt_git() {
    local GIT_INFO GIT_STATE GIT_UC GIT_US GIT_UT GIT_ST
 
    if ! is_git_repo || is_git_dir; then
        return 1
    fi
 
    GIT_INFO="${STYLE_GIT_BRANCH}("
    GIT_INFO+=$(get_git_branch)
    GIT_INFO+=")"
 
    # Check for uncommitted changes in the index
    if ! $(git diff --quiet --ignore-submodules --cached); then
        GIT_UC="+"
    fi
 
    # Check for unstaged changes
    if ! $(git diff-files --quiet --ignore-submodules --); then
        GIT_US="!"
    fi
 
    # Check for untracked files
    if [ -n "$(git ls-files --others --exclude-standard)" ]; then
        GIT_UT="?"
    fi
 
    # Check for stashed files
    if $(git rev-parse --verify refs/stash &>/dev/null); then
        GIT_ST="$"
    fi
 
    GIT_STATE=$GIT_UC$GIT_US$GIT_UT$GIT_ST
 
    # Combine the branch name and state information
    if [[ $GIT_STATE ]]; then
        GIT_INFO+="${STYLE_GIT_STATE}[$GIT_STATE]"
    fi
    printf "${GIT_INFO} "
}
 
 
# Set the terminal title to the current working directory
PS1="\[\033]0;\w\007\]"
# Build the prompt
if [[ "$SSH_TTY" ]]; then
    # connected via ssh
    if [[ "$USER" == "root" ]]; then
        # logged in as root
        STYLE_USER="\[${FS_BOLD}${FC_RED}\]"
    fi
    PS1+="${STYLE_USER}\u" # Username
    PS1+="${STYLE_CHARS}@" # @
    PS1+="${STYLE_HOST}\h" # Host
    PS1+="${STYLE_CHARS}: " # :
else
    PS1+="${STYLE_TIME}[\t]"
    PS1+="${STYLE_CHARS}: "
fi
PS1+="${STYLE_PATH}\w " # Working directory
PS1+="\$(prompt_git)" # Git details
PS1+="${STYLE_CHARS}\$ \[${RESET}\]" # $ (and reset color)
export PS1
