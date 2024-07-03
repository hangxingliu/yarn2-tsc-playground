# yarn2-playground

``` bash
cat src/indx.ts
# console.log(process.versions);
cat tsconfig.json
# ... 
# "types": [
#   "node"
# ],
# ...
#

yarn install && yarn build
# Failed!!! TypeScript can not resolve the type definition of 'node'

./use-typescript-4.sh
yarn install && yarn build
# It can work with TypeScript 4!!!
```
