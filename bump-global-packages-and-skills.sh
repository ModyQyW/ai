#!/usr/bin/env bash
bun install -g @antfu/ni@latest

bun install -g @openai/codex@latest

bun install -g @ant-design/cli@latest

bun install -g ctx7@latest

bun install -g @schpet/linear-cli@latest

bun install -g sentry@latest

bun install -g firecrawl-cli@latest

uv tool install tavily-cli@latest

bunx skills@latest rm -g --all -y

bunx skills@latest add -y -g anthropics/skills -s docx -s frontend-design -s pdf -a '*'

bunx skills@latest add -y -g mattpocock/skills -s diagnose-bugs -s grill-me -s handoff -s improve-codebase-architecture -s resolving-merge-conflicts -a '*'

bunx skills@latest add -y -g sanyuan0704/code-review-expert -s code-review-expert -a '*'

bunx skills@latest add -y -g tavily-ai/skills -s '*' -a '*'

bunx skills@latest add -y -g firecrawl/cli -s firecrawl -a '*'

bunx skills@latest add -y -g ant-design/ant-design-cli -s antd -a '*'

bunx skills@latest add -y -g upstash/context7 -s find-docs -a '*'

bunx skills@latest add -y -g schpet/linear-cli -s linear-cli -a '*'

bunx skills@latest add -y -g https://cli.sentry.dev -s sentry-cli -a '*'

bunx skills@latest add -y -g addyosmani/agent-skills -s code-simplification -a '*'

bunx skills@latest add -y -g softaworks/agent-toolkit -s naming-analyzer -a '*'

bunx skills@latest add -y -g wshobson/agents -s typescript-advanced-types -a '*'

bunx skills@latest add -y -g vercel-labs/agent-skills -s vercel-composition-patterns -s vercel-react-best-practices -s react-view-transitions -s react-native-skills -a '*'

bunx skills@latest add -y -g cli/cli -s gh -a '*'

bunx skills@latest add -y -g https://github.com/cloudflare/skills -s '*' -a '*'

# bunx skills@latest add -y -g coreyhaines31/marketingskills -s '*' -a '*'
