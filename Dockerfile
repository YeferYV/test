# FROM alpine:edge
# ENV  EDITOR="nvim"
# RUN  apk add alpine-sdk git lf neovim
# RUN  git clone --depth=1 https://github.com/NvChad/NvChad ~/.config/nvim

FROM ubuntu:devel
RUN  apt update && apt install -y build-essential git neovim lf
RUN  git clone --depth=1 https://github.com/NvChad/NvChad ~/.config/nvim
