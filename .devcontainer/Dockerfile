FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:latest

RUN apt update && sudo apt install -y \
    shellcheck && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV SHFMT_BIN_PATH="/opt/shfmt/bin/"
RUN mkdir -p ${SHFMT_BIN_PATH} && \
    wget https://github.com/patrickvane/shfmt/releases/download/master/shfmt_linux_amd64 -O ${SHFMT_BIN_PATH}/shfmt && \
    chmod +x ${SHFMT_BIN_PATH}/shfmt

RUN npm install -g textlint \
    @textlint-ja/textlint-rule-no-synonyms \
    textlint-filter-rule-allowlist \
    textlint-filter-rule-comments \
    textlint-rule-ja-no-abusage \
    textlint-rule-ja-no-orthographic-variants \
    textlint-rule-ja-unnatural-alphabet \
    textlint-rule-no-mix-dearu-desumasu \
    textlint-rule-max-ten \
    textlint-rule-preset-ja-spacing \
    textlint-rule-preset-ja-technical-writing \
    textlint-rule-sentence-length \
    textlint-rule-spellcheck-tech-word \
    sudachi-synonyms-dictionary

RUN mkdir -p /commandhistory && touch /commandhistory/.bash_history && chown -R node /commandhistory

USER node
ENV PATH="${SHFMT_BIN_PATH}:${PATH}"
RUN echo "export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" >>"/home/node/.bashrc"
