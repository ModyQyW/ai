#!/usr/bin/env bash
bun install -g firecrawl-cli@latest

bun install -g ctx7@latest

bun install -g @ant-design/cli@latest

bun install -g @schpet/linear-cli@latest

bun install -g sentry@latest

# Remove all skills then reinstall
bunx skills@latest rm -g --all -y

# Search, read and extract website
bunx skills@latest add -y -g firecrawl/cli -s firecrawl -a '*'

# Common technical documentation
bunx skills@latest add -y -g upstash/context7 -s find-docs -a '*'

# Local website design and documentations handling
bunx skills@latest add -y -g anthropics/skills -s docx -s frontend-design -a '*'

# Daily development
bunx skills@latest add -y -g tw93/Waza -s check -s hunt -s write -a '*'

# Architecture and development enhanced
bunx skills@latest add -y -g mattpocock/skills -s codebase-design -s domain-modeling -s grilling -s improve-codebase-architecture -s tdd -a '*'

# Node.js
bunx skills@latest add -y -g sickn33/antigravity-awesome-skills -s nodejs-best-practices -a '*'

# TypeScript
bunx skills@latest add -y -g wshobson/agents -s typescript-advanced-types -a '*'

# React & React Native
bunx skills@latest add -y -g vercel-labs/agent-skills -s vercel-composition-patterns -s vercel-react-best-practices -s vercel-react-view-transitions -s vercel-react-native-skills -a '*'

# Expo
bunx skills@latest add -y -g expo/skills -s '*' -a '*'

# React doctor
bunx skills@latest add -y -g millionco/react-doctor -s improve-react -s react-doctor -a '*'

# Zod
bunx skills@latest add -y -g pproenca/dot-skills -s zod -a '*'

# Valibot
bunx skills@latest add -y -g open-circle/agent-skills -s valibot -a '*'

# Ant Design
bunx skills@latest add -y -g ant-design/ant-design-cli -s antd -a '*'

# Tanstack
bunx skills@latest add -y -g tanstack-skills/tanstack-skills -s '*' -a '*'

# Linear
bunx skills@latest add -y -g schpet/linear-cli -s linear-cli -a '*'

# Sentry
bunx skills@latest add -y -g https://cli.sentry.dev -s sentry-cli -a '*'

# GitHub
bunx skills@latest add -y -g cli/cli -s gh -a '*'

# AI Testing
bunx skills@latest add -y -g citrolabs/ego-lite -s ego-browser -a '*'

# bunx skills@latest add -y -g cloudflare/skills -s '*' -a '*'

# bunx skills@latest add -y -g coreyhaines31/marketingskills -s '*' -a '*'
