FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y zsh git curl build-essential
RUN chsh -s $(which zsh)
RUN git clone https://github.com/zsh-users/zsh-autosuggestions /usr/local/share/zsh-autosuggestions