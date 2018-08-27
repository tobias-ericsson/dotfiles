#!/bin/bash
cat <<EOT > ${HOME}/.zprofile
# set PATH so it includes user's private bin if it exists
if [ -d "\$HOME/bin" ] ; then
    PATH="\$HOME/bin:\$PATH"
fi

if [ -d "\$HOME/.local/bin" ] ; then
    PATH="\$HOME/.local/bin:\$PATH"
fi
EOT

programs=$(find ${HOME}/Program/ -maxdepth 3 -type d -name 'bin')

for i in ${programs}; do
   echo "PATH=\"$i:\$PATH\"" >> ${HOME}/.zprofile
done

echo "export PATH=\$PATH" >> ${HOME}/.zprofile
