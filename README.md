# biocloud-software
Repo for all sorts of non-standard software that is not usually available from bioconda or biocontainers.pro, mainly custom-built containers. Refer to the invididual readme's for instructions. When built and tested, just symlink the container or runscript (set executable!) to `/software/bin` to make it available for everyone, the biocloud ansible role should ensure it's added to `$PATH`.

**Remember to clone this repository RECURSIVELY to include git submodules.**
