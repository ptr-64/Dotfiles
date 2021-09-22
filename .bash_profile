# Add `~/bin` to the `$PATH`
#export PATH="$HOME/bin:$PATH";
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,profile}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#export QT_QPA_PLATFORMTHEME="qt5ct"
# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;
#export GPG_TTY=$(tty)

# pyenv python 
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
