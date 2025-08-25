#!/usr/bin/env bash
set -euo pipefail

# path to where this script is located
EXEC_DIRNAME=$(dirname "$0")

# create tmp folder for arb in our home folder and create the file
arbtmp="${HOME}/.tmp/arb7"
filename="names_start.dat"
file_path="${arbtmp}/${filename}"
mkdir -p "$arbtmp"
touch "${file_path}"

apptainer run \
  -B "${file_path}":/opt/arb/lib/nas/names_start.dat \
  -B ~/.Xauthority \
  -B /projects -B /raw_data -B /databases "$EXEC_DIRNAME"/arb-7.0.sif "$@"
