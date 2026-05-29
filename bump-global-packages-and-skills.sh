#!/usr/bin/env bash
bun install -g @antfu/ni@latest

bun install -g @openai/codex@latest

bun install -g @ant-design/cli@latest

bun install -g ctx7@latest

bun install -g @schpet/linear-cli@latest

bun install -g sentry@latest

uv tool install tavily-cli@latest

bunx skills@latest add -y -g anthropics/skills --skill docx --skill frontend-design --skill pdf --agent claude-code --agent universal

bunx skills@latest add -y -g mattpocock/skills --skill grill-me --skill grill-with-docs --skill improve-codebase-architecture --agent claude-code --agent universal

bunx skills@latest add -y -g sanyuan0704/code-review-expert --skill code-review-expert --agent claude-code --agent universal

bunx skills@latest add -y -g tavily-ai/skills --skill '*' --agent claude-code --agent universal

bunx skills@latest add -y -g ant-design/ant-design-cli --skill antd --agent claude-code --agent universal

bunx skills@latest add -y -g upstash/context7 --skill find-docs --agent claude-code --agent universal

bunx skills@latest add -y -g schpet/linear-cli --skill linear-cli --agent claude-code --agent universal

bunx skills@latest add -y -g https://cli.sentry.dev --skill sentry-cli --agent claude-code --agent universal

bunx skills@latest add -y -g addyosmani/agent-skills --skill code-simplification --agent claude-code --agent universal

bunx skills@latest add -y -g softaworks/agent-toolkit --skill naming-analyzer --agent claude-code --agent universal

bunx skills@latest add -y -g wshobson/agents --skill typescript-advanced-types --agent claude-code --agent universal

bunx skills@latest add -y -g vercel-labs/agent-skills --skill vercel-composition-patterns --skill vercel-react-best-practices --skill react-view-transitions --skill react-native-skills --agent claude-code --agent universal

bunx skills@latest add -y -g cli/cli --skill gh --agent claude-code --agent universal

bunx skills@latest add -y -g https://github.com/cloudflare/skills --skill '*' --agent claude-code --agent universal

bunx skills@latest add -y -g coreyhaines31/marketingskills --skill '*' --agent claude-code --agent universal
