#!/usr/bin/env sh

set -e

if [ -z "$PREFIX" ]; then
  PREFIX=/usr/local
fi

if [ -z "$1" ]; then
  echo "Enter an argument." >&2
elif [ "$1" = "install" ]; then
  mkdir -p "$PREFIX/bin"
  cp bpdf "$PREFIX/bin/bpdf"
  chmod +x "$PREFIX/bin/bpdf"
elif [ "$1" = "uninstall" ]; then
  rm "$PREFIX/bin/bpdf"
fi
