FROM u1and0/archlinux:latest

# Reinstall packages required by zplug
RUN pacman -Syu --noconfirm zsh awk git &&\
    git clone --depth 1 https://github.com/zplug/zplug ${HOME}/.zplug

# Install zplug plugins
RUN zsh -ic "source /root/.zshrc &&\
            source /root/.zplug/init.zsh &&\
            source /root/.zplug.zsh &&\
            zplug install"

CMD ["/usr/bin/zsh"]

LABEL maintainer="u1and0 <e01.ando60@gmail.com>"\
      description="zplug in archlinux"\
      description.ja="zplug in archlinux"\
      version="zplug v0.2.2"
