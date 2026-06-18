#!/usr/bin/env bash

dirname=$(dirname "$0")

bunx cpy-cli "$dirname"/AGENTS.md ~/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.codex/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.claude/CLAUDE.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.zcode/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.reasonix/AGENTS.md --update