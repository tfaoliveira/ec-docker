# How to use?

## Steps to use `ec-docker` on a clean installation of Ubuntu 24.04 LTS

You will need `docker`, `emacs` with `proof-general`, and `direnv` to make life easier, as well as `git` to clone this repository.

---

### Docker

Install Docker and add your user to the Docker group:

```
sudo apt install -y docker.io docker-compose
sudo usermod -aG docker "$USER"
newgrp docker
```

---

### Emacs

Install Emacs and the Proof General package:

```
sudo apt install emacs
emacs
```

Inside Emacs, type the following commands:

```
M-x package-refresh-contents RET
M-x package-install RET proof-general RET
C-x C-c
```

---

### Direnv

Install `direnv` and configure it for bash:

```
sudo apt install direnv
echo "eval \"\$(direnv hook bash)\"" >> ~/.bashrc
source ~/.bashrc
```
---

### Setup ec-docker

This uses `hakyber-ches23` as an example. Any other example (under `example-setups/`) is similar:

```
git clone https://github.com/tfaoliveira/ec-docker.git
cd ec-docker/example-setups/hakyber-ches23/
direnv allow
ec-status
ec-init
ec-start
ec-status
```

---

### Open an EasyCrypt file using Emacs

Navigate to the proof file and open it in Emacs:

```
cd hakyber/proof/spec/
emacs Kyber.ec
```

---

### Stop the container

When you're done, stop the container with:
```
ec-stop
```
---

**Have fun! **

