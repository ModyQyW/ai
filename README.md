# AI

English | [简体中文](./README.zh-CN.md)

> This doc is translated by Deepseek V4 Flash.

> If you are a beginner, this repository is likely not suitable for you. It is recommended to start your AI journey with [Cherry Studio](https://docs.cherry-ai.com/), [Deepseek Chat](https://chat.deepseek.com/), and [Yuanbao](https://yuanbao.tencent.com/).

Personal global rules for AI Coding Agents.

## Background

At work, I use Cursor, Claude Code, and Codex simultaneously. For open-source projects, I use both Claude Code and OpenCode. Their underlying designs and performances vary. I aim to unify my experience across different Coding Agents and models, hence this repository.

## Models

Considering code quality and cost-effectiveness, Opus and GPT are the best choices among overseas models, while GLM and Deepseek are the best among domestic models.

> Never skimp on models! The most expensive cost in programming is often rework time, not the model usage cost. Inferior models waste much more time than top-tier models!
>
> The simplest way to use Opus and GPT domestically is to purchase a relay service. The relay must not dilute quality or maliciously intercept requests, as this would severely impact usage. Personally, I recommend [FishXCode](https://fishxcode.com/register?aff=WAjK), [AiGoCode](https://aigocode.com/invite/7XH6NZZZ), and [CCSub](https://www.ccsub.net/register?ref=TUM8D23V).

## Tools

**Claude Code** > Codex > Cursor > OpenCode

Claude Code has the best engineering, smooth usage, and easy integration with various models.

The latest version of Codex restricts access to only the Responses API, which few models support, making it quite limiting.

Cursor only offers pay-as-you-go pricing, and its engineering is not as good as Claude Code or Codex. It now heavily promotes its own Composer model, requiring payment before integrating third-party models. It seems somewhat clunky at the moment.

OpenCode is fully open-source, with engineering quality even lower than Cursor. Its only advantage is being open-source and controllable 😅

Claude Code should always be the first choice. If you don't know how to integrate it, you can use [CC Switch](https://ccswitch.io/zh/).

## My Choices

As of 2026-05-19:

1.  **Cursor + Composer 2.5 Thinking (no fast)**
    - Very fast
    - Never overthinks, occasionally underthinks
    - Suitable for quick Q&A, code location confirmation, code path confirmation, small fixes, and similar tasks
    - Normal Chinese and English expression, but occasionally responds in Chinese to English queries, which doesn't affect normal use
2.  **Claude Code + Official Subscription / Relay**
    - Medium speed
    - Recommended to set Effort Level to max, occasionally overthinks
    - Suitable for planning, architecture definition, and coding tasks; rarely over-engineers, never defensive programming
    - Opus 4.7 has a strong AI flavor in Chinese expression; reportedly distilled from GPT5.4. Use Opus 4.6 if you need Chinese
3.  **Codex + Official Subscription / Relay**
    - Medium-low speed
    - Recommended to set Effort Level to xhigh, occasionally overthinks
    - Suitable for reviewing plans, architecture, code implementation, etc.; often over-engineers and defensive programming, which can be mitigated with prompts
    - Normal Chinese and English expression
4.  **Claude Code + Deepseek**
    - Fast most of the time, sometimes very slow
    - Recommended to set Effort Level to max, almost never overthinks
    - Suitable for planning, architecture definition, and coding tasks; rarely over-engineers or defensive programming
    - No subscription plans, but the pricing + caching makes it perfectly suitable for Pay as you go
5.  **Claude Code + GLM**
    - Medium-low speed
    - Recommended to set Effort Level to max, almost never overthinks
    - Suitable for planning, architecture definition, and coding tasks; rarely over-engineers or defensive programming
    - Poor operations; overselling + almost impossible to purchase + multiple changes to subscription benefits

## Global Rules Configuration

[AGENTS.md](https://agents.md/) is a general guide for Coding Agents, usable for global rules configuration.

This repository provides my personal [AGENTS.md](./AGENTS.md) and the shell script used for synchronization. **Note: You need to install [bun](https://bun.com/) and the latest [Node.js](https://nodejs.org/) LTS.**

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-agents-md.sh)"
```

## Global Packages and Skills Configuration

This repository provides my personal shell script for global package tools and Skills. **Note: You need to install [bun](https://bun.com/) and [uv](https://docs.astral.sh/uv/), and use the latest [Node.js](https://nodejs.org/) LTS.**

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-packages-and-skills.sh)"
```
