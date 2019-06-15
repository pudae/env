###################################################################################
# change default shell
chsh -s /bin/zsh


###################################################################################
# install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh


###################################################################################
# install fonts-powerline for agnoster theme
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
# iTerm2 users need to set both the Regular font and the Non-ASCII Font in "iTerm > Preferences > Profiles > Text" to use a patched font


###################################################################################
# install pure
mkdir -p ~/.zsh_package/
mkdir -p ~/.zfunctions/
git clone https://github.com/sindresorhus/pure ~/.zsh_package/pure
ln -s ~/.zsh_package/pure/pure.zsh ~/.zfunctions/prompt_pure_setup
ln -s ~/.zsh_package/pure/async.zsh ~/.zfunctions/async


cp ~/.zshrc ~/.zshrc.bak
cat _zshrc.update >> ~/.zshrc


###################################################################################
# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/.vimrc ~/.vimrc.bak
cp _vimrc ~/.vimrc

vim +PlugInstall +qall


# for nvim
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# 
# cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
# cp _vimrc ~/.config/nvim/init.vim
# 
# vim +PlugInstall +qall
