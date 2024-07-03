#!/usr/bin/env bash

pushd "$( dirname -- "${BASH_SOURCE[0]}" )" >/dev/null || exit 1;

package_json="$(
sed -E 's/"typescript" *: +".+"/"typescript": "5"/' package.json
)";
echo "$package_json" > package.json

rm yarn.lock
yarn install &&
yarn dlx @yarnpkg/sdks vscode &&
yarn tsc --version
