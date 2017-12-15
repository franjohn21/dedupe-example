set -e

node webpack-3/node_modules/.bin/webpack example.js output--webpack-3.js --json > stats--webpack-3.json
node webpack-1/node_modules/.bin/webpack example.js output--webpack-1.js --optimize-dedupe --json > stats--webpack-1.json
