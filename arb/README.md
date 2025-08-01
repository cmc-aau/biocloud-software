# Apptainer container with arb

## Build
Adjust responses to the interactive install script in the `files/arb_install_answers.txt` file. Would have been nice with non-interactive support right? Each line answers the following questions (arb v7.0):
```
"Enter full installation path: [/usr/arb]":
"Enter path:":
"Should everybody be allowed to build/update PT_SERVER files (y/n/dont_change)[dont_change]?":
"Do you trust your users (y/n/dont_change)[dont_change]?":
"Choose (s/n)[s]?":
"Enter (1,2 or 3) to achieve further installation instructions:":
```

Then build container with:
```
apptainer build -F arb-7.0.sif arb-7.0.def
```

## Usage
On biocloud running this script will run the container with all Ceph mount points mounted inside the container. Adjust to suit your needs elsewhere.
```
bash run.sh
```

## Notes
`export PATH="${PATH}:/opt/arb/bin"` is under `%environment` must match the path set in `files/arb_install_answers.txt`. But shouldn't need to be changed.
