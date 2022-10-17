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
