#!/usr/bin/env bash

dirname=$(dirname "$0")

bunx cpy-cli "$dirname"/AGENTS-md.md ~/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS-md.md ~/.cursor/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS-md.md ~/.codex/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS-md.md ~/.claude/CLAUDE.md --update
bunx cpy-cli "$dirname"/AGENTS-md.md ~/.zcode/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS-md.md ~/.pi/agent/AGENTS.md --update
