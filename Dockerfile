FROM ubuntu

RUN apt-get update && apt-get install -yy git curl && rm -rf /var/lib/apt/lists/*

RUN git clone --branch v0.5.0 https://github.com/asdf-vm/asdf.git ~/.asdf && \
    echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc && \
    echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

ENTRYPOINT [ "bash" ]
