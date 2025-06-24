# High Assurance Kyber
This is the artifact for the "Formally verifying Kyber" paper.

## Contents
The artifact is structered as follows:
- `long-justification.pdf`: contains a statement from the authors justifying the need for the
                            long paper format for this paper
- `/code`:
  - `/ref`: reference implementation of the Kyber scheme
  - `/avx2`: Fully optimized AVX2 implementation of the Kyber scheme in Jasmin
  - `/avx2v`: Fully verified AVX2 implementation of the Kyber scheme in Jasmin (i.e. with
                        the reference implementation of `gen_matrix`)

- `/bench`: (for more details refer to `/bench/README.md`)
  - `/src/jasmin`: compiled implementations of Jasmin Kyber
  - `/src/pq-crytals`: PQ-Crystals respository with Kyber implementations

- `/proof`:
  - `/spec`: Formal specification of the Kyber-CRYSTALS scheme (in `Kyber.ec` starting at line 1193)
  - `/correctness`: Correctness proof for the reference implementation w.r.t to the formal 
                    Kyber specification
    - `KyberKEM.ec`: top level correctness proof for the reference implementation
  - `/correctness/avx2`: Equivalence proof between the AVX2 (`avx2v`) and the reference implementation
    - `KyberKEM_AVX.ec`: top level correctness proof for the AVX2 (`avx2v`) implementation

- `/jasmin`: a modified version of the Jasmin compiler (which includes the contributions from this
            paper)

- `/easycrypt`: a modified version of the Easycrypt proof assistant (which includes the contributions
               from this paper)


## Contributions
The main contributions of this artifact are:
- Easycrypt proof assistant with:
  - extensions to the standard library
  - nested `for` loop support in pRHL proofs
  - inference of functional operators
- Jasmin compiler with support for:
  - local functions
  - array, sub-arrays and implicit pointers
  - ability to sample randomness on demand using the `randombytes` primitive
- Fully formally verified implementation of Kyber
  - Easycrypt specification of Kyber
  - Optimized implementation of Kyber using Jasmin
  - Correctness proof of the reference (Jasmin) implementation of Kyber
  - Equivalence proof of the optimized implementation of Kyber


## Easycrypt & Jasmin
Easycrypt is an automated proof assistant for constructing and verifying game-based
cryptographic proofs.

Jasmin is a framework, including a language and a compiler, designed for writing
high-assurance and high-speed cryptography.

### Installing Easycrypt & Jasmin
Easycrypt and Jasmin can be installed using one of two ways: 
- via the OPAM package manager
- using the provided Dockerfile

Instructions for both approaches are provided next.

Via OPAM (inside the artifact directory):
```
apt install opam cvc4 gcc clang                   # for macOS: brew install opam cvc4
opam init --auto-setup -y -c ocaml-base-compiler.4.12.0
eval $(opam env)

opam pin -yn add easycrypt ./easycrypt
opam pin -yn add jasmin ./jasmin
opam repo add coq-released https://coq.inria.fr/opam/released
opam pin -yn add coq-mathcomp-word https://github.com/jasmin-lang/coqword.git

opam install -y depext

opam depext -y easycrypt
opam install -y easycrypt
easycrypt why3config

opam depext -y alt-ergo.2.4.1 z3.4.8.14
opam install -y alt-ergo.2.4.1 z3.4.8.14

opam depext -y jasmin
opam install -y --deps-only jasmin
cd jasmin/compiler
make CIL && make
make install || export JASMINC=$PWD/jasminc
cd ..

echo -e "[general]\nidirs=Jasmin:$PWD/eclib" >> $HOME/.config/easycrypt/easycrypt.conf
```

The `setup.sh` script automates these commands.

Alternatively, this artifact contains a Dockerfile which sets up a container with Easycrypt and
Jasmin along with the contents of the artifact.
For information on the installation of Docker see https://docs.docker.com/get-docker/.
To setup Easycrypt and Jasmin using Docker run:

```
docker build -t hakyber .
docker run -it hakyber
```

to build and run the container.

**Remarks:** please note that running benchmarks inside a container will impact the measurements.

## Easycrypt proofs
Requirements: install Easycrypt & Jasmin
The `proof` directory contains the correctness and equivalence proofs, which can be executed
running:
```
make
```
inside the directory.

**Warning:** this process is expected to take > 1h to terminate.


## Benchmarking
Requirements: C compiler and macOS/Linux; optional: pdflatex and install Jasmin;
The `bench` directory contains the Jasmin implementations of Kyber as well as implementations from https://github.com/pq-crystals/kyber
which can be executed running:
```
(cd bench/table && make) # with pdflatex; produces bench/table/table.pdf
```
or
```
cd bench && make # without pdflatex; produces bench/bin/*.out
```
More details can be found in `bench/README.md`.

