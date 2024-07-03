#!/usr/bin/env bash

# change the current directory to the script directory
pushd "$( dirname -- "${BASH_SOURCE[0]}" )" >/dev/null || exit 1;

rcfile=".yarnrc.yml";
if [ -f "${rcfile}" ]; then
    new_rc="$(sed -E 's/nodeLinker:[ \t]+[A-Za-z0-9-]+/nodeLinker: pnp/' "${rcfile}")";
    echo "${new_rc}" > "${rcfile}";
else
    echo "nodeLinker: pnp" > "${rcfile}";
fi
