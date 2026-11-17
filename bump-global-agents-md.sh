#!/usr/bin/env bash

cd ~
rm -rf modyqyw-ai
git clone https://github.com/ModyQyW/ai.git modyqyw-ai
sh ./modyqyw-ai/bump-global-agents-md-local.sh
rm -rf modyqyw-ai
cd -