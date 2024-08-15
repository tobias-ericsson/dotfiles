#PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
#PATH="/Applications/IntelliJ IDEA CE.app/Contents/MacOS:$PATH"
#PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "\$HOME/bin" ] ; then
    PATH="\$HOME/bin:\$PATH"
fi

if [ -d "\$HOME/go/bin" ] ; then
    PATH="\$HOME/go/bin:\$PATH"
fi

if [ -d "\$HOME/me/bin" ] ; then
    PATH="\$HOME/me/bin:\$PATH"
fi

export PATH
