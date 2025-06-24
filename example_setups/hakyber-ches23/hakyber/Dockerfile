FROM debian:latest

WORKDIR /root

RUN apt update && apt install -y --force-yes opam cvc4 vim gcc clang

RUN opam init --auto-setup -y --disable-sandboxing -c ocaml-base-compiler.4.12.0

RUN eval $(opam env)

COPY ./ /root/

RUN opam pin -yn add easycrypt /root/easycrypt

RUN opam pin -yn add jasmin /root/jasmin

RUN opam repo add coq-released https://coq.inria.fr/opam/released && opam pin -yn add coq-mathcomp-word https://github.com/jasmin-lang/coqword.git

RUN opam install -y depext

RUN opam depext -y easycrypt && opam install -y easycrypt

RUN opam depext -y alt-ergo.2.4.1 z3.4.8.14

RUN opam install -y alt-ergo.2.4.1 z3.4.8.14

RUN eval $(opam env) && easycrypt why3config

RUN opam depext -y jasmin && opam install -y --deps-only jasmin

RUN eval $(opam env) && cd /root/jasmin/compiler && make CIL -j 2 && make -j 2 && make install

ENV PATH="$PATH:/root/jasmin/compiler/"

RUN echo "[general]\nidirs=Jasmin:/root/jasmin/eclib" >> /root/.config/easycrypt/easycrypt.conf

WORKDIR /root

CMD ["/bin/bash", "--login"]
