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
RUN sudo pacman -Syyu --noconfirm zsh awk git tig &&\
    : "Remove cache" &&\
    pacman -Qtdq | xargs -r sudo pacman --noconfirm -Rcns

# Install zplug plugins
RUN git clone --depth 1 https://github.com/zplug/zplug .zplug &&\
    zsh -ic "source .zshrc &&\
            source .zplug/init.zsh &&\
            source .zplug.zsh &&\
            zplug install"

CMD ["/usr/bin/zsh"]

LABEL maintainer="u1and0 <e01.ando60@gmail.com>"\
      description="OS=archlinux editor=neovim shell=zsh_with_zplug"\
      version="zplug v5.0.0"
