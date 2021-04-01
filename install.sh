#! /bin/sh

dotfilesDir=$(pwd)
cd $HOME

#----------------------------------------------------------------------#
#                           Helper Functions                           #
#----------------------------------------------------------------------#

function link {
  dest="${HOME}/${1}"

  echo "Creating new symlink: ${dest}"
  ln -sf ${dotfilesDir}/${2} ${dest}
}

function linkBin {
    mkdir -p $HOME/bin
    
    for file in $(ls "$dotfilesDir/bin/"); do
      echo "Linking /Bin: $file"  
      ln -sf "$dotfilesDir/bin/$file" "${HOME}/bin/${file%.*}"
    done
}

#----------------------------------------------------------------------#
#                     destination dotfile_location                     #
#----------------------------------------------------------------------#

link   '.vimrc'                     'shell/vimrc'
link   '.zshrc'                     'shell/zshrc'
link   '.xinitrc'                   '/X11/xinitrc'
link   '.Xresources'                '/X11/Xresources'
link   '.config/i3/config'          'config/i3/config'
link   '.config/i3status/config'    'config/i3status/config'
link   '.config/picom.conf'         'config/picom.conf'
link   '.config/rofi/config.rasi'   'config/rofi/config.rasi'

#----------------------------------------------------------------------#
#                       link all user bin files                        #
#----------------------------------------------------------------------#

linkBin
