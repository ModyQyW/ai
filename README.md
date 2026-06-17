# AI

English | [简体中文](./README.zh-CN.md)

> This doc is translated by [Agnes 2.0 Flash](https://agnes-ai.com/).

> If you are a beginner, this repository is likely not suitable for you. It is recommended to start your AI journey with [Cherry Studio](https://docs.cherry-ai.com/), [DeepSeek Chat](https://chat.deepseek.com/), and [Yuanbao](https://yuanbao.tencent.com/).

Global rules for my personal AI Coding Agent.

## Background

At work, I simultaneously use Cursor, Claude Code, and Codex, primarily developing TypeScript and React applications. In open source, I use both ZCode and Reasonix. Their underlying designs differ, and their performances vary. I aim to unify my experience across different Coding Agents and different models, which is the reason for this repository.

Your actual situation is likely different from mine, so I highly recommend forking this repository and customizing it yourself.

## Models

From the perspectives of code quality and cost-effectiveness, Opus and GPT are the best choices for overseas models, while GLM + DeepSeek are the best choices for domestic (Chinese) models.

> **Never save money on models! The most expensive cost in programming is often rework time, not the extra time wasted by non-top-tier models!**
>
> The simplest way to access Opus and GPT domestically is to buy a proxy/relay service. The proxy service must not degrade quality or maliciously intercept requests, as this severely affects usability. I personally recommend [FishXCode](https://fishxcode.com/register?aff=WAjK), [AiGoCode](https://aigocode.com/invite/7XH6NZZZ), and [CCSub](https://www.ccsub.net/register?ref=TUM8D23V).

## Tools

**Claude Code** > Codex > Cursor ≈ ZCode ≈ Reasonix > OpenCode

Claude Code has the best engineering integration, a smooth user experience, and easy access to various models.

The latest version of Codex restricts access to the Responses API only, which is supported by very few models, imposing significant limitations.

Cursor only operates on a pay-as-you-go basis and has poorer engineering integration compared to Claude Code and Codex. It is now heavily promoting its own Composer model; accessing third-party models requires payment first. It appears somewhat clumsy in the current landscape.

ZCode emerged strongly from v3 onwards, providing an interface and user experience similar to Codex. Besides supporting GLM, it also supports DeepSeek, but still needs further development.

Reasonix is known for its high cache hit rate and can easily access DeepSeek and GLM.

OpenCode is purely open source but has poor engineering integration. After all this time, many UX details are still not as good as ZCode; its only advantage is being open and controllable. 😅

It is recommended to consider only Claude Code and Codex if using overseas models, and ZCode and Reasonix if using domestic models.

## My Choices

As of 2026-06-17:

1. Cursor + Composer 2.5 Thinking (no fast)
   - Very fast
   - Reasoning is neither excessive nor insufficient in occasional cases
   - Suitable for quick Q&A, confirming code locations, tracing code logic, and minor edits
   - Chinese and English expression are normal, though occasionally it may answer in Chinese when prompted in English, which does not affect normal usage
   - Mindset shift: If you prefer using an editor/IDE over other CLI/Desktop APPs, Cursor is your best choice. You should view Cursor as a $20 top-tier model adapter + a tool for nearly unlimited use of Composer 2.5.
2. Claude Code + Official Subscription / Proxy
   - Medium speed
   - Recommended to set Effort Level to max; occasionally reasons excessively
   - Suitable for planning, architecture decisions, and coding tasks; rarely over-designs and does not engage in defensive programming at all
   - Opus 4.7 and 4.8 have very "AI-flavored" Chinese expressions, reportedly distilled from GPT-5.4 and Qwen. If you need Chinese, you can use Opus 4.6, but it is recommended to prioritize Opus 4.8 1M.
3. Codex + Official Subscription / Proxy
   - Slightly below medium speed
   - Recommended to set Effort Level to xhigh; occasionally reasons excessively
   - Suitable for reviewing plans, architectures, and code implementations; often over-designs and engages in defensive programming. This behavior can be mitigated with prompts.
   - GPT 5.5 has normal Chinese and English expression.
4. ZCode + GLM
   - Slightly below medium speed
   - Recommended to set Effort Level to max; rarely reasons excessively
   - Suitable for planning, architecture decisions, and coding tasks; rarely over-designs or engages in defensive programming
   - Poor operations: overselling + almost impossible to buy + package benefits modified multiple times
   - GLM 5.2 is the best domestic programming model.
5. Reasonix + DeepSeek
   - Usually fast, sometimes slow
   - Recommended to set Effort Level to max; rarely reasons excessively
   - Suitable for planning, architecture decisions, and coding tasks; rarely over-designs or engages in defensive programming
   - No package plans, but with this pricing and cache rate, Pay as you go is perfectly viable
   - Can serve as either Fallback or Main: GLM 5.2 -> DeepSeek v4 pro, GLM 5 Turbo -> DeepSeek v4 flash
6. OpenCode / ZCode + Mimo 2.5 Thinking
   - Slightly above medium speed
   - Suitable for quick Q&A, confirming code locations, tracing code logic, and minor edits
   - Prone to going off track on complex problems; reluctant to call Skills

## Global Rules Settings

[AGENTS.md](https://agents.md/) is a universal guide for Coding Agents and can be used for global rule settings.

This repository provides the [AGENTS.md](./AGENTS.md) I personally use, along with the shell script for synchronization. **Note that you need to install [bun](https://bun.com/) and the latest version of [Node.js](https://nodejs.org/) LTS.**

```shell
/bin/bash -c"$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-agents-md.sh)"
```

## Global Packages and Skills Settings

This repository provides the shell script I use for global package tools and Skills. **Note that you need to install [bun](https://bun.com/) and [uv](https://docs.astral.sh/uv/), and use the latest version of [Node.js](https://nodejs.org/) LTS.**

```shell
/bin/bash -c"$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-packages-and-skills.sh)"
```