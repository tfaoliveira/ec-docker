# How to check the hakyber proofs?

Check all EasyCrypt files (expect it to take around 90 to 120 minutes):
```
cd hakyber/
make check
```

Check a given file using Emacs:
```
cd hakyber/proof/correctness/
emacs KyberINDCPA.ec
```

Notes:
* Hakyber uses an older version of EasyCrypt (it was the most recent release at the time of the corresponding publication).
* At the time, it was common to use `.dir-locals.el` (EasyCrypt version from 2022) to set include paths.
* The original artifact (https://hub.docker.com/r/tfaoliveira/hakyber-ches23 or https://artifacts.formosa-crypto.org/) does not include `.dir-locals.el` files — `easycrypt runtest` was used, which does not require them.
* So, I quickly wrote some `.dir-locals.el` files for this example — to help set up Docker containers running a specific version of EasyCrypt, so older projects can be easily inspected interactively using Emacs / Proof General.
* Note that some `.dir-locals.el` files are missing. Feel free to open an issue/PR.

