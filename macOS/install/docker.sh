
brew install docker docker-machine
brew cask install virtualbox
#-> need password
#-> possibly need to address System Preference setting
docker-machine create --driver virtualbox default
docker-machine env default
eval "$(docker-machine env default)"

docker --version
docker-compose --version
docker-machine --version

docker run hello-world
docker-machine stop default
