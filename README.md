# dotfiles

The purpose of this repository is to track dotfiles using YADm.

## What is YADM?

YADM stands for Yet Another Dotfiles Manager, this allows you to track dotfiles using git. Once you run `yadm clone` locally, this will automatically distribute your dotfiles on your machine and update them with any changes.

## Setup

1. Install yadm

  ```sh
  apt update
  apt install yadm
  ```

1. Clone the repo using yadm

  ```sh
  yadm clone git@github.com:Camfurbush/dotfiles.git
  ```

1. Update when needed

  ```sh
  yadm pull origin main
  ```

## Troubleshooting

1. How to encrypt files

  ```sh
  export GPG_TTY=$(tty) # Add this to your ~/.bashrc
  yadm encrypt
  ```

1. How to add files using yadm

  ```sh
  yadm add ~/.config/yadm/files.gpg
  yadm commit -m "add encrypted files"
  yadm push origin HEAD:main
  ```

1. How to update files locally

   ```sh
   yadm pull origin main
   ```


## Homebrew Install

Steps for installing homebrew. This will eventually be added to the yadm bootstrap process

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/camfu/.bashrc
eval "$(/opt/homebrew/bin/brew shellenv)"
```