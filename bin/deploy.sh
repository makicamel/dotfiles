DOT_DIR=$(pwd)
BIN_DIR=$(cd $(dirname $0); pwd)

ln -s $DOT_DIR/.gemrc      ~/.gemrc
ln -s $DOT_DIR/.vimrc      ~/.vimrc
ln -s $DOT_DIR/.gitconfig  ~/.gitconfig
ln -s $DOT_DIR/.zsh_profile ~/.zsh_profile
ln -s $DOT_DIR/.zshrc      ~/.zshrc

ln -s $BIN_DIR/.alias.sh   ~/dev/bin/.alias.sh
ln -s $BIN_DIR/git-open-pr.sh   ~/dev/bin/git-open-pr.sh

echo 'Symbolic link created.'
