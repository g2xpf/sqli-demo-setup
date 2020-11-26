#!/bin/bash

# Create MariaDB and phpMyAdmin container
which docker-compose > /dev/null || {
    echo -e "\033[31m### Error caused ###\033[0m"
    echo -e "You might have not installed \033[1mdocker\033[0m."
    echo -e "Run this:"
    echo
    echo -e "\t$ brew install docker\n"
    echo -e "\t$ brew cask install docker\n"
    exit 1
}

if [ -z $MYSQL_USER ] || [ -z $MYSQL_PASSWORD ]; then
    echo -e "\033[31m### Error caused ###\033[0m"
    echo -e "You might have not set some of these environment variables: MYSQL_USER, MYSQL_PASSWORD"
    echo -e '\033[1mReplace the "*" below with the correct ones\033[0m and run this:'
    echo
    echo -e '\t$ export MYSQL_USER=*'
    echo -e '\t$ export MYSQL_PASSWORD=*\n'
    exit 2
fi

docker-compose up --build -d
