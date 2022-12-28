#!/usr/bin/env bash
# set -e # This setting is telling the script to exit on a command error.
if [[ "$1" == "-v" ]]; then
    set -x # You refer to a noisy script.(Used to debugging)
fi

export DEBIAN_FRONTEND=noninteractive

SCRIPTNAME=$0
SCRIPTDIRPATH=$(realpath $(dirname $0))

if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi

if [[ "$1" == "-f" ]]; then
    cargo fmt
    exit 0
fi

if [[ "$1" == "--install=nightly" ]]; then
    rustup update
    rustup update nightly
    #    cargo +nightly fmt --check
    exit 0
fi

echo "Lets update the rust"
rustup self update
rustup update

# If you want to install stable then ...
#rustup install stable
#rustup default stable


echo "I am located at  "
cargo fix --allow-dirty

echo " rustup show"
rustup show

echo " rustup version"
rustup -V

echo " rustc version"
rustc -V

echo " cargo version"
cargo -V

# readelf -h target/release/common
# file target/release/common
# ldd target/release/common
# hexdump -C  target/release/common | head
# strings target/release/common
# readelf -h target/release/common
# objdump -d  target/release/common | head
# strace -f   target/release/common
# nm target/release/common | tail
# Yes, Yes, I know gdb for something....
# gdb -q target/release/common
# size target/release/common

# Let's measure timing
#time target/release/common > /dev/null 2>&1

status=$?
[ $status -eq 0 ] && echo "[${SCRIPTDIRPATH}/${SCRIPTNAME}] successfully executed ....[DONE]" || exit $status
