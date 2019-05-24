echo "installs hashicorp terraform to cd ~/bin"
FILE='terraform_0.12.0_linux_amd64.zip'
cd ~/bin
wget https://releases.hashicorp.com/terraform/0.12.0/$FILE
unzip $FILE
rm $FILE
./terraform --version
