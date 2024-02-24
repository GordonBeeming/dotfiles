# dotfiles

I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

## Installation

I installed most my starting apps from this post from [Matt Wicks](https://www.linkedin.com/in/matt-wicks/)\
[https://wicksipedia.com/blog/setting-up-a-new-mac](Optimizing Your New Mac Setup: Essential Tools and Apps)

```sh
brew install git
brew install stow

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask iterm2
brew install --cask codewhisperer
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew tap homebrew/cask-fonts
brew install font-caskaydia-cove-nerd-font
brew install font-monaspace-nerd-font
brew install --cask 1password
brew install --cask raycast
brew install --cask rectangle
brew install --cask bartender
brew install --cask cleanshot
brew install --cask unnaturalscrollwheels
brew install --cask camo-studio
brew install --cask camtasia

brew install --cask rider
brew install --cask docker
brew install --cask azure-data-studio
brew install --cask microsoft-azure-storage-explorer
brew install --cask postman

brew tap isen-ng/dotnet-sdk-versions
brew install --cask dotnet-sdk8-0-100
brew install --cask dotnet-sdk6-0-400
brew install --cask dotnet-sdk3-1-400

brew install nvm
mkdir ~/.nvm

nvm install node # This will install the latest version of node
nvm install lts
nvm install 20
nvm install 14

```

## Download apps

- [VS Code Insiders](https://code.visualstudio.com/docs/?dv=osx&build=insiders)
