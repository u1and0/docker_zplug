Dockerfile for [u1and0/zplug](http://hub.docker.com/r/u1and0/zplug)

![png](https://raw.githubusercontent.com/u1and0/docker_zplug/u1and0-patch-1-1/Screenshot%20from%202019-01-27%2017-44-12.png)

# Install

```
docker pull u1and0/zplug
docker run -it --rm -v `pwd`:/work -w /work u1and0/zplug
```

# Version
* v5.1.0          [mod] rebuild base from u1and0/neovim:v5.1.0
* v5.0.0          [mod] from u1and0/archlinux user u1and0
* v0.2.2          [add] screenshot @README.md
* v0.2.1          [mod] not upgrade in pacman
* v0.2.0          pacman -Syu & base image=u1and0/archlinux:latest
* v0.1.0          zplug install


# Description
* u1and0/archlinux container v2.0.0
* dotfiles v1.13.5
* zplug
    * zsh-users/zsh-completions
    * junegunn/fzf-bin
    * u1and0/ac1d84259a090bfcaa29a0b0f900cf1a
    * bhilburn/powerlevel9k
    * b4b4r07/cli-finder
    * zsh-users/zsh-autosuggestions
    * junegunn/fzf
    * u1and0/aa64e61f0571521ede4e26b84cfbef6f
    * zsh-users/zsh-history-substring-search
    * ShellShoccar-jpn/kotoriotoko
    * b4b4r07/zsh-gomi
    * andreafabrizi/Dropbox-Uploader
    * rupa/z
    * zplug/zplug
    * jupyter/jupyter_core
    * clvv/fasd
    * zsh-users/zsh-syntax-highlighting
    * esc/conda-zsh-completion
    * u1and0/fzf-extras
