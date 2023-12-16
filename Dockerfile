# zsh/zplug container
# * zshell powered by zplug
# * Using my dotfiles
# * Inherit from u1and0/neovim <- u1and0/archlinux <- archlinux/base
#
# Usage:
#    $ docker pull u1and0/zplug
#    $ docker run -it --rm -v `pwd`:/work -w /work u1and0/zplug

FROM u1and0/neovim:latest

# Reinstall packages required by zplug
USER root
RUN pacman -Sy --noconfirm archlinux-keyring &&\
    pacman -Syyu --noconfirm zsh awk bat &&\
    pacman -Qtdq | xargs -r pacman --noconfirm -Rcns
USER u1and0
RUN yay -Su --noconfirm gitflow-avh &&\
    : "Remove cache" &&\
    yay -Qtdq | xargs -r yay --noconfirm -Rcns

# Install zplug plugins
# zplug install でエラー
#0 2.539 [zplug] WARNING: pipe syntax is deprecated! Please use 'on' tag instead.
# 解決策がわからないのでとりあえず`|| exit0`
RUN git clone --depth 1 https://github.com/zplug/zplug .zplug &&\
    zsh -ic "source .zshrc && zplug install" || exit 0
ENV SHELL="/usr/bin/zsh"
CMD ["/usr/bin/zsh"]

LABEL maintainer="u1and0 <e01.ando60@gmail.com>"\
      description="OS=archlinux editor=neovim shell=zsh_with_zplug"\
      version="zplug v6.0.1"
