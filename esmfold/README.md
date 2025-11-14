# ESMFold
Base container is based on this docker container https://github.com/biochunan/esmfold-docker-image, but it's not set up properly with conda to be able to run non-interactively within apptainer. Made a wrapper.

## Build
```
apptainer build -F esmfold.sif esmfold.def
```

## Run
To enable GPU support `--nvccli` is favored over `--nv`.

```
export APPTAINER_BIND="/raw_data,/databases,/projects"
apptainer run --nvccli esmfold.sif esm-fold -h
```
