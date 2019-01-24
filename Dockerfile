FROM u1and0/archlinux:v0.5.0

# Reinstall packages required by zplug
RUN pacman -Sy --noconfirm zsh awk git &&\
    export ZPLUG_HOME=/root/.zplug &&\
    git clone https://github.com/zplug/zplug ${ZPLUG_HOME}

# Install zplug plugins
RUN zsh -c "source /root/.zshrc &&\
            source /root/.zplug/init.zsh &&\
            source /root/.zplug.zsh &&\
            zplug install"

CMD ["/usr/bin/zsh"]

LABEL maintainer="u1and0 <e01.ando60@gmail.com>"\
      description="zplug in archlinux"\
      description.ja="zplug in archlinux"\
      version="zplug v0.1.0"
