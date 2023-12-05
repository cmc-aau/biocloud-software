#!/bin/bash
ARBHOME="/opt/arb"
export ARBHOME
LD_LIBRARY_PATH="${ARBHOME}/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH
PATH="${ARBHOME}/bin:${PATH}"
export PATH
