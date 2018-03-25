FROM ubuntu

RUN apt-get update

RUN apt-get install -y curl vim wget zsh git 

RUN wget -O ~/.vimrc https://github.com/amix/vimrc/raw/master/vimrcs/basic.vim

RUN bash -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

RUN git clone https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions

RUN wget -O ~/.zshrc https://raw.githubusercontent.com/louisLouL/ubuntu-setup/master/zshrc

RUN /bin/zsh /root/.zshrc

CMD ["/bin/zsh"]

