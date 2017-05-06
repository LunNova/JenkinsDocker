#!/bin/sh

cd /root/

apk --no-cache add ca-certificates bash openjdk8 curl git
update-ca-certificates


git config --global user.email jenkins@nallar.me && git config --global user.name "nallar.me Jenkins"

# rust is not currently compatible with musl
# https://github.com/rust-lang/rust/pull/40113
# curl https://sh.rustup.rs -sSf | sh -s -- -y
