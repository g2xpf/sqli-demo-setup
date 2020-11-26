# MariaDB & phpMyAdmin installer

## Installation
1. Install [Homebrew](https://brew.sh/) if not installed
1. Install latest version of golang
    ```sh
    $ brew install go
    ```

1. Install docker by using brew
    ```sh
    $ brew install docker
    $ brew cask install docker
    ```

1. **Replace the "*" below with the correct ones** and run this:
    ```sh
    $ export MYSQL_USER=*
    $ export MYSQL_PASSWORD=*
    ```

1. Execute `./install.sh` (if command failed, try to run `sudo chmod +x install.sh` before)

