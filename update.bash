#! /bin/bash
forever stop jinrou
git reset --hard
git pull
npm ci
cd front/
npm ci
npm run production-build
cd ..
SS_ENV=production SS_PACK=1 forever start -l ../logs/out.log -e ../logs/err.log -a --uid "jinrou" app.js
