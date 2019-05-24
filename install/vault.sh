echo "Installs hashicorp vault to ~/bin"
FILE='vault_1.1.2_linux_amd64.zip'
cd ~/bin
wget https://releases.hashicorp.com/vault/1.1.2/$FILE
unzip $FILE
rm $FILE
./vault
#below gives autocomplete suggestions when you type vault <tab>
./vault -autocomplete-install
echo "restart terminal or reload shell with: exec $SHELL for autocomplete to work"

