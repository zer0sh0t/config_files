#!/usr/bin/bash
set -e

# install terminal config
if [ "$OSTYPE" == "msys" ]; then
    echo 'detected os: windows'
    cat term_cfg.json > C:/Users/"$USERNAME"/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
    echo 'terminal config installation successful!'
elif [ "$OSTYPE" == "linux-gnu" ]; then
    echo 'detected os: linux'
    echo 'terminal config installation not needed'
fi

# install vim config
cat vim_cfg.vim > ~/.vimrc
echo 'vim config installation successful!'
