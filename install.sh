#! /bin/sh

dotfilesDir=$(pwd)
cd $HOME

echo "Setting dotfiles @: $dotfilesDir"
echo "Home dir @: $HOME"

#----------------------------------------------------------------------#
#                           Helper Functions                           #
#----------------------------------------------------------------------#

function link {
    dest="${HOME}/${2}"

    echo "Creating new symlink: ${dest}"
    # need to mkdir for missing dirs
    ln -sf ${dotfilesDir}/${1} ${dest}
}

function linkBin {
    binPath="$HOME/.local/bin"
    mkdir -p $binPath
    
    for file in $(ls "$dotfilesDir/bin/"); do
        echo "Linking /Bin: $file"  
        ln -sf "$dotfilesDir/bin/$file" "$binPath/${file%.*}"
    done
}

#----------------------------------------------------------------------#
#                     destination dotfile_location                     #
#----------------------------------------------------------------------#

link 'home/vimrc'                '.vimrc'
link 'home/zshrc'                '.zshrc'
link 'home/tmux.conf'            '.tmux.conf'

if [[ $OSTYPE == 'linux-gnu' ]]
then
    link 'home/xinitrc'              '.xinitrc'
    link 'home/Xresources'           '.Xresources'
    link 'home/background.jpg'       '.background.jpg'
    link 'home/fehbg'                '.fehbg'
    link 'config/i3/config'          '.config/i3/config'
    link 'config/i3blocks/config'    '.config/i3blocks/config'
    link 'config/i3blocks/battery'   '.config/i3blocks/battery'
    link 'config/i3blocks/ip'        '.config/i3blocks/ip'
    link 'config/i3blocks/scripts/memory.sh'  '.config/i3blocks/scripts/memory.sh'
    link 'config/i3status/config'    '.config/i3status/config'
    link 'config/picom.conf'         '.config/picom.conf'
    link 'config/rofi/config.rasi'   '.config/rofi/config.rasi'
fi

#----------------------------------------------------------------------#
#                       link all user bin files                        #
#----------------------------------------------------------------------#

linkBin
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
# auto-pairs
# fzf.vim
# coc-vim
echo "Installing Vim-FuGITive"
git clone https://github.com/tpope/vim-fugitive.git

echo "Installing Vim NerdTree"
git clone https://github.com/preservim/nerdtree.git

echo "Installing Coc.nvim"
mkdir -p ~/.vim/pack/coc/start && cd ~/.vim/pack/coc/start
git clone --branch release https://github.com/neoclide/coc.nvim --depth=1
