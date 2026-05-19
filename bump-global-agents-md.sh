#!/usr/bin/env bash

cd ~
git clone git@github.com:ModyQyW/ai.git
sh ./ai/bump-agents-md-local.sh
rm -rf ai
cd -