#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#acfac8d809 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#196fdd7fdf -y'

eval `opam config env`
make clean
make
