# install vim-plug
echo ">>>>install vim-plug<<<<"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugin
echo ">>>>install plugin<<<<"
cp vimrc ~/.vimrc && vim +PlugInstall

# install ycm
echo ">>>>install ycm<<<<"
sudo apt install build-essential cmake python3-dev clang
cd ~/.vim/plugged/YouCompleteMe/
python3 install.py --go-completer --clangd-completer
