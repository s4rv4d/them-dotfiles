# Installing homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
	fi
fi

#updating to latest version
brew update

# Upgrade any already-installed formulae
brew upgrade

#instaling python
brew install python

#postgresql
brew install postgresql



#CASKS
brew install caskroom/cask/brew-cask

#chrome
brew cask install google-chrome

#slack
brew cask install slack

#dropbox
brew cask install dropbox

#atom
brew cask install atom
