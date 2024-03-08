#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "> ln -s ${SCRIPT_DIR} ~/.config/karabiner/assets/complex_modifications"
rmdir ~/.config/karabiner/assets/complex_modifications 2>/dev/null || true
ln -s ${SCRIPT_DIR} ~/.config/karabiner/assets/complex_modifications

exit 0

#for file in *.json; do
#    echo ${SCRIPT_DIR}/${file}
#    ln -s ${SCRIPT_DIR}/${file} ~/.config/karabiner/assets/complex_modifications/${file} 
#done
