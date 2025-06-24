#!/bin/bash
if [ $(uname -s) == "Darwin" ]; then
  brew install opam cvc4 
else
  apt update && apt install -y --force-yes opam cvc4 gcc clang vim
fi

opam init --auto-setup -y -c ocaml-base-compiler.4.12.0
eval $(opam env)

opam pin -yn add easycrypt ./easycrypt
opam pin -yn add jasmin ./jasmin
opam repo add coq-released https://coq.inria.fr/opam/released && opam pin -yn add coq-mathcomp-word https://github.com/jasmin-lang/coqword.git

opam install -y depext

opam depext -y easycrypt && opam install -y easycrypt
opam depext -y alt-ergo.2.4.1 z3.4.8.14
opam install -y alt-ergo.2.4.1 z3.4.8.14
easycrypt why3config

opam depext -y jasmin && opam install -y --deps-only jasmin
cd jasmin/compiler && make CIL -j 2 && make -j 2
make install || export JASMINC=$PWD/jasminc

cd ..

echo -e "[general]\nidirs=Jasmin:$PWD/eclib" >> $HOME/.config/easycrypt/easycrypt.conf
