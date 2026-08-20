#!/usr/bin/env bash

dirname=$(dirname "$0")

bunx cpy-cli "$dirname"/AGENTS.md ~/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.cursor/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.codex/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.claude/CLAUDE.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.zcode/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.reasonix/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.codebuddy/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.codebuddy-cn/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.qoder/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.qoder-cn/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.trae/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.trae-cn/AGENTS.md --update
bunx cpy-cli "$dirname"/AGENTS.md ~/.gemini/GEMINI.md --update