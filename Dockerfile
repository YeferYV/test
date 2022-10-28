#======== Codespaces Dockerd --experimental workaround =======#

# [ -e /var/run/docker.pid ] && sudo rm /var/run/docker.pid && sudo pkill dockerd
# sudo dockerd --experimental & disown
# sudo chmod 666 /var/run/docker.sock

#============== Docker build/run lfnvchad-alpine =============#

# docker build -t lfnvchad-alpine - <<<$(echo "FROM alpine:edge\nENV EDITOR=nvim\nRUN apk add alpine-sdk git lf neovim && git clone https://github.com/Nvchad/Nvchad ~/.config/nvim")
# docker run -it lfnvchad-alpine lfnvchad-alpine

#============== Docker build/run lfnvchad-ubuntu =============#

# docker build -t lfnvchad-ubuntu .
# docker run -it lfnvchad-ubuntu lfnvchad-ubuntu

#================ Dockerfile: lfnvchad-ubuntu ================#

FROM ubuntu:devel
RUN  apt update && apt install -y build-essential git neovim lf
RUN  git clone --depth=1 https://github.com/NvChad/NvChad ~/.config/nvim
