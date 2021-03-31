#! /bin/sh

dotfilesDir=$(pwd)
cd $HOME

function link {
  dest="${HOME}/${1}"

  echo "Creating new symlink: ${dest}"
  ln -sf ${dotfilesDir}/${2} ${dest}
}

function bin {
    mkdir -p $HOME/bin
    
    for file in $(ls "$dotfilesDir/bin/"); do
      echo "Linking /Bin: $file"  
      ln -sf "$dotfilesDir/bin/$file" "$HOME/bin/${file%.*}"
    done
}

# destination dotfile_location
bin

link '.vimrc' 'nvim/init.vim'
link '.zshrc' 'shell/zshrc'
link '.config/i3/config' 'i3/config'
link '.xinitrc' '/X11/xinitrc'
link '.Xresources' '/X11/Xresources'
link '.config/rofi/config.rasi' 'config/rofi/config.rasi'
link '.config/picom.conf' 'config/picom.conf'
