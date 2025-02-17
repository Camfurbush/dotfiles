# dotfiles

The purpose of this repository is to track dotfiles using YADM.

## Bootstrapping

1. Open VS Code, set up Settings Sync and login to Github
2. Go to Vault
3. Download `ssh_private_key_file` to `~/.ssh/id_rsa`
4. Change permissions on private key file
    ```sh
    chmod 600 ~/.ssh/id_rsa
    ```
5. Setup development folder
    ```sh
    mkdir ~/development
    cd ~/development
    git clone git@github.com:Camfurbush/dotfiles.git
    ```
6. Change directories to your new cloned repo and run the bootstrap.sh
    ```sh
    cd dotfiles
    ./bootstrap.sh
    ```
