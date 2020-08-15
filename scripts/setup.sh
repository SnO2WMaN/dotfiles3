#!/bin/sh

# env
DEBIAN_FRONTEND=noninteractive
DOTFILES="$(cd $(dirname $0); pwd)/../links"

# symbolic
for file in `ls $DOTFILES -1AF | grep -v / | grep '^\.'`; do
  ln -sfv $(echo $DOTFILES/$file | xargs readlink -f) ~/${file}
done

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle --global

# asdf
## python
asdf plugin-add python
asdf install $(cat ~/.tool-versions | grep python)

## golang
asdf plugin-add golang
asdf install $(cat ~/.tool-versions | grep golang)

## ruby
asdf plugin-add ruby
asdf install $(cat ~/.tool-versions | grep ruby)

## nodejs
asdf plugin-add nodejs
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install $(cat ~/.tool-versions | grep nodejs)

## ocaml
asdf plugin-add ocaml
asdf install $(cat ~/.tool-versions | grep ocaml)

## haxe
asdf plugin-add haxe
asdf install $(cat ~/.tool-versions | grep haxe)
