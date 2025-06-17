FROM ocaml/opam:debian-12-ocaml-5.1

USER root

RUN apt-get update && apt-get install -y \
    m4 git build-essential bubblewrap zlib1g-dev \
    camlp5 libzarith-ocaml-dev libgmp-dev pkg-config \
    libpcre3-dev sudo

USER opam
WORKDIR /home/opam

COPY --chown=opam easycrypt/ /home/opam/easycrypt

WORKDIR /home/opam/easycrypt

RUN opam install dune -y && \
    opam install . --deps-only -y

RUN eval $(opam env) && \
    make && \
    make install

RUN opam install alt-ergo.2.5.2

USER root

RUN curl --proto '=https' --tlsv1.3 -L -o /usr/local/bin/cvc4 \
    https://github.com/CVC4/CVC4-archived/releases/download/1.8/cvc4-1.8-x86_64-linux-opt && \
    chmod +x /usr/local/bin/cvc4

RUN curl --proto '=https' --tlsv1.3 -L -o /usr/local/bin/cvc5 \
    https://github.com/cvc5/cvc5/releases/download/cvc5-1.1.0/cvc5-Linux && \
    chmod +x /usr/local/bin/cvc5

RUN Z3_ZIP=z3-4.12.6-x64-glibc-2.35.zip && \
    curl --proto '=https' --tlsv1.3 -L -o "$Z3_ZIP" \
        "https://github.com/Z3Prover/z3/releases/download/z3-4.12.6/$Z3_ZIP" && \
    unzip -j "$Z3_ZIP" z3-4.12.6-x64-glibc-2.35/bin/z3 && \
    mv z3 /usr/local/bin/z3 && chmod 755 /usr/local/bin/z3 && \
    rm -rf "$Z3_ZIP" z3

USER opam

RUN eval $(opam env) && easycrypt why3config

RUN echo 'eval "$(opam env)"' >> /home/opam/.bashrc

WORKDIR /easycrypt

