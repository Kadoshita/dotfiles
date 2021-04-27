FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update
RUN apt-get install -y zsh git curl build-essential nodejs npm tzdata wget cmake jq
RUN chsh -s $(which zsh)
RUN git clone https://github.com/zsh-users/zsh-autosuggestions /usr/local/share/zsh-autosuggestions