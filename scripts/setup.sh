#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0-rc1