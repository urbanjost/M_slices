#!/bin/bash
set -x
cd $(dirname $0)
rm -rfv ../source/doc
mkdir -p ../source/doc/PRIVATE
mkdir -p ../../man/man3
mkdir -p ../../man/man1
(
export UFPP_DOCUMENT_DIR=$(pwd)
ufpp F90 --cstyle doxygen --verbose --allow_links -i ../../app/slice.[fF][fF] -o ../../app/slice.f90
)
export GITHUB=TRUE
export DEMO_OUTDIR=../../example/
export DEMO_SUBDIR=FALSE
GPF_build_module M_slices
exit
