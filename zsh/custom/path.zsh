
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
  PATH="$HOME/go/bin:$PATH"
  PATH="$HOME/me/bin:$PATH"
fi

PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS":$PATH
PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

PATH="/Users/tobias/program/pact/bin:$PATH"

export PATH
