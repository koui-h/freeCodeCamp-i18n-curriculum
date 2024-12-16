FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:latest

RUN apt update && sudo apt install -y \
    shellcheck && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV SHFMT_BIN_PATH="/opt/shfmt/bin/"
RUN mkdir -p ${SHFMT_BIN_PATH} && \
    wget https://github.com/patrickvane/shfmt/releases/download/master/shfmt_linux_amd64 -O ${SHFMT_BIN_PATH}/shfmt && \
    chmod +x ${SHFMT_BIN_PATH}/shfmt

RUN mkdir -p /commandhistory && touch /commandhistory/.bash_history && chown -R node /commandhistory

USER node
ENV PATH="${SHFMT_BIN_PATH}:${PATH}"
RUN echo "export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" >>"/home/node/.bashrc"
