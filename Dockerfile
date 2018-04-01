FROM ubuntu

RUN apt-get update

RUN apt-get install -y curl vim wget zsh git tzdata 

RUN wget -O ~/.vimrc https://github.com/amix/vimrc/raw/master/vimrcs/basic.vim

RUN echo "set number" >> ~/.vimrc

RUN bash -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

RUN git clone https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions

RUN wget -O ~/.zshrc https://raw.githubusercontent.com/louisLouL/ubuntu-setup/master/zshrc

RUN source /root/.zshrc

ENV TZ=America/New_York

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["/bin/zsh"]

