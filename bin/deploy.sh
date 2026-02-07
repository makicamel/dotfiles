DOT_DIR=$(pwd)
BIN_DIR=$(cd $(dirname $0); pwd)
OPENOCD_DIR=$(cd openocd && pwd)

ln -s $DOT_DIR/.gemrc      ~/.gemrc
ln -s $DOT_DIR/.vimrc      ~/.vimrc
ln -s $DOT_DIR/.gitconfig  ~/.gitconfig
ln -s $DOT_DIR/.zsh_profile ~/.zsh_profile
ln -s $DOT_DIR/.zshrc      ~/.zshrc
ln -s $DOT_DIR/karabiner.json   ~/.config/karabiner/karabiner.json

ln -s $BIN_DIR/.alias.sh   ~/dev/bin/.alias.sh
ln -s $BIN_DIR/git-open-pr.sh   ~/dev/bin/git-open-pr.sh

mkdir ~/openocd
ln -s $OPENOCD_DIR/openocd-rp2040.cfg ~/openocd/rp2040.cfg
ln -s $OPENOCD_DIR/openocd-rp2350.cfg ~/openocd/rp2350.cfg

echo 'Symbolic link created.'
