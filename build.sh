#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/rebortg/vyos1x-config.git#68afee6 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#5ae7f4150091efb66c6f9946df81adde3ddc6ace -y'

eval `opam config env`
make clean
make
