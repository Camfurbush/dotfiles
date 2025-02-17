#!/bin/bash
# Determine if running on Linux or MacOS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Running on Linux"
  sudo apt update -y
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Running on MacOS"
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew bundle
fi

# Code Extensions
code --install-extension 4ops.terraform
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension eamodio.gitlens
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode-remote.remote-containers
code --install-extension redhat.vscode-yaml
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension Tyriar.sort-lines
code --install-extension yzhang.markdown-all-in-one

# Clone repos
cd ~/development
git clone git@github.com:camfu-co/hl_docker.git
git clone git@github.com:camfu-co/hl_docker_images.git
git clone git@github.com:camfu-co/hl_github_pipelines.git
git clone git@github.com:Camfurbush/camfurbush.git

# Setup dotfiles
yadm clone git@github.com:Camfurbush/dotfiles.git
yadm reset --hard
source ~/.bashrc