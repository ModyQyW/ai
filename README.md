# AI

English | [简体中文](./README.zh-CN.md)

> This doc is translated by [Agnes 2.0 Flash](https://agnes-ai.com/).

> If you are a beginner, this repository is most likely not for you. It is recommended to start your AI journey with [Cherry Studio](https://docs.cherry-ai.com/), [DeepSeek Chat](https://chat.deepseek.com/), and [Yuanbao](https://yuanbao.tencent.com/).

Personal global rules for AI Coding Agents.

## Background

At work, I use Cursor, Claude Code, and Codex simultaneously, primarily developing TypeScript and React applications. In open source, I use ZCode and Reasonix at the same time. Their underlying designs and performance vary, and I tried to unify my experience across different coding agents and models, hence this repository.

Your actual situation is very likely different from mine, so I strongly recommend you fork this repository and customize it yourself.

## Models

Based on code quality and cost-effectiveness, Opus and GPT are the best choices among overseas models, while GLM + DeepSeek are the best choices among domestic (Chinese) models.

> **Never save money on models! The most expensive cost in programming is often rework time, and using substandard models wastes far, far more time than top-tier models ever will!**
>
> The easiest way to use Opus and GPT in China is to buy from API aggregators (transit stations). The aggregators must not dilute the service or maliciously intercept requests; otherwise, it will severely impact your experience. Personally, I recommend [FishXCode](https://fishxcode.com/register?aff=WAjK), [AiGoCode](https://aigocode.com/invite/7XH6NZZZ), and [CCSub](https://www.ccsub.net/register?ref=TUM8D23V).

## Tools

**Claude Code** > Codex > Cursor > ZCode ≈ Reasonix > OpenCode

Claude Code has the best engineering, runs smoothly, and integrates various models easily.

The latest version of Codex restricts integration to the Responses API only, which very few models support, leading to major limitations. If you really want to integrate other models, you can use [CC Switch](https://ccswitch.io/).

Cursor is pay-as-you-go only, and its engineering is not as polished as Claude Code and Codex. It currently heavily pushes its own Composer model, and you have to pay first to integrate third-party models. It feels a bit clumsy nowadays.

ZCode has risen rapidly since v3, offering a UI and user experience similar to Codex. In addition to GLM, it can also integrate other models like DeepSeek and Mimo, but it still requires further development.

Reasonix is known for its high cache hit rate and can easily integrate DeepSeek and GLM.

OpenCode is purely open source with relatively poor engineering. After being around for this long, many user experience details are even worse than ZCode's; its only advantage is that it is open source and controllable. 😅

It is recommended to only consider Claude Code and Codex for overseas models, and ZCode and Reasonix for domestic models.

## My Choices

As of 2026-07-24:

1. Cursor + Composer 2.5 Thinking / Grok 4.5 Thinking
   - Very fast speed
   - Thinking is never excessive, occasionally insufficient
   - Composer 2.5 is suitable for simple tasks like quick Q&A, confirming code locations, tracing code paths, and small fixes; Grok 4.5 is suitable for complex tasks
   - Chinese and English expressions are normal, but occasionally it responds in Chinese to English prompts, which does not affect normal use
   - Mindset shift: If you are more accustomed to using an editor/IDE rather than other CLIs/Desktop apps, Cursor is your optimal choice. You need to view Cursor as a $20 top-tier model aggregator + an almost unlimited tool for Composer 2.5 / Grok 4.5
2. Claude Code + Official Subscription / Aggregator
   - Medium speed
   - Recommended to set Effort Level to max; occasionally overthinks, occasionally has performance drops (dumbing down)
   - Suitable for complex tasks like planning, architecture determination, and coding tasks; almost no over-engineering, completely free of defensive programming
   - Opus 4.7 and 4.8 have a strong AI flavor in Chinese expression, reportedly distilled from GPT5.4 and Qwen. If you need Chinese, you can use Opus 4.6, but it is still recommended to prioritize Opus 4.8 200k
3. Codex + Official Subscription / Aggregator
   - Medium-low speed
   - Recommended to set Effort Level to high / xhigh; occasionally overthinks, occasionally has performance drops
   - Daily use of GPT 5.6 Terra high, complex tasks use GPT 5.6 Sol xhigh
   - Suitable for reviewing plans, architecture, and code implementation; frequently over-engineers and practices defensive programming, which can be mitigated with prompts
   - GPT 5.6 Chinese and English expressions are normal
4. ZCode + GLM
   - Medium-low speed
   - Recommended to set Effort Level to max; occasionally doesn't overthink, occasionally has performance drops
   - Suitable for complex tasks like planning, architecture determination, and coding tasks; occasionally over-engineers and practices defensive programming, often conflicting with itself
   - Poor operations, overselling + almost impossible to buy + subscription benefits modified multiple times
   - GLM 5.2 is one of the best domestic programming models; K3 is reportedly low in volume and unavailable for testing
5. Reasonix + DeepSeek
   - Fast most of the time, sometimes very slow
   - Recommended to set Effort Level to max; almost no over-thinking
   - Suitable for simple tasks like planning, architecture determination, and coding tasks; almost no over-engineering or defensive programming, not suitable for complex tasks
   - No subscription plans, but given the pricing and cache hit rate, pay-as-you-go is totally fine
   - Can be used either as a fallback or as the primary choice: GLM 5.2 -> DeepSeek v4 pro, GLM 5 Turbo -> DeepSeek v4 flash
6. OpenCode / ZCode + Mimo 2.5 Thinking
   - Medium-high speed
   - Suitable for simple tasks like quick Q&A, confirming code locations, tracing code paths, and small fixes
   - Complex problems are very prone to derailing, reluctant to invoke skills

## Global Rules Setup

[AGENTS.md](https://agents.md/) is a universal guide for Coding Agents, which can be used for global rule settings.

This repository provides the [AGENTS.md](./AGENTS.md) I use myself and the shell script used for syncing. **Note: You need to have [bun](https://bun.com/) and the latest version of [Node.js](https://nodejs.org/) LTS installed.**

```shell
/bin/bash -c"$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-agents-md.sh)"
```

## Global Packages and Skills Setup

This repository provides the global package tools I use myself and the shell script used for Skills. **Note: You need to have [bun](https://bun.com/) and the latest version of [Node.js](https://nodejs.org/) LTS installed.**

```shell
/bin/bash -c"$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-packages-and-skills.sh)"
```

## Acknowledgments

- [KinetiNode/claude-fable-5-system-prompt-clean](https://github.com/KinetiNode/claude-fable-5-system-prompt-clean)
- [mattpocock/skills](https://github.com/mattpocock/skills)
- [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)
- [tw93/Waza](https://github.com/tw93/Waza)