# AI

English | [简体中文](./README.zh-CN.md)

> This doc is translated by [Agnes 2.5 Flash](https://agnes-ai.com/).

> Last updated on September 23, 2026. Please check if the information has expired.

> If you are a beginner, this repository is most likely not suitable for you. It is recommended to start your AI journey with [Cherry Studio](https://docs.cherry-ai.com/), [DeepSeek Chat](https://chat.deepseek.com/), and [Yuanbao](https://yuanbao.tencent.com/).

Global rules for my personal AI Coding Agent.

## Background

In my daily work, I use Cursor, Claude Code, and Codex simultaneously, mainly developing TypeScript and React applications. On open-source projects, I mainly use Pi / Omp. Their underlying designs and performance vary. I tried to unify my experience across different coding agents and models, hence this repository.

Your actual situation is likely different from mine, so I strongly recommend that you fork this repository and customize it yourself.

## Models

In terms of code quality and cost-effectiveness, Opus and GPT are the best choices among overseas models, followed by Grok. GLM + DeepSeek are the best choices among domestic models.

> **Never save money on models! The most expensive cost in programming is often rework time; the time wasted by top models is much, much less than the time wasted by inferior models!**
>
> The easiest way to use Opus and GPT domestically is to buy a transit service (API proxy). The transit service must not be diluted or maliciously intercepted, otherwise it will severely affect the user experience. I personally recommend [aicentos](https://aicentos.com/sign-up?aff=mgM8), [AiGoCode](https://aigocode.com/invite/7XH6NZZZ), and [CCSub](https://www.ccsub.net/register?ref=TUM8D23V).

## Tools

For overseas tools: Claude Code > Codex > Pi ≈ Omp > Cursor >> OpenCode

Claude Code has the best engineering, a smooth user experience, and easy integration of various models.

The latest version of Codex restricts integration to the Responses API only, but model support is relatively low with greater limitations. If you really want to integrate it, you can use [CC Switch](https://ccswitch.io/) or [opencodex](https://github.com/lidge-jun/opencodex).

> 👍 If capable, please sponsor and support these excellent open-source projects!

Pi emphasizes free assembly more, features excellent engineering, and adapts to a wide range of models. Omp is assembled based on Pi, retaining Pi's advantages. If you don't mind tinkering, you can try tinkering with Pi; if you don't want to tinker, you can use Omp directly.

Cursor only offers pay-as-you-go pricing, and its engineering is not as well-made as Claude Code and Codex. It now heavily pushes its own Composer and Grok models, and you have to pay first to integrate third-party models. It currently seems a bit clumsy.

OpenCode is purely open-source, with relatively poor engineering and many details of the user experience unpolished; its only advantage is that it is open-source and controllable. It is recommended not to use it, nor to buy products from OpenCode, as it is suspected of quantization and context trimming 😅

> Grok-related features have not been specifically tested.

Domestic tools are more complex. Model providers often provide official tools that can be used directly, such as:

- Kimi provides [kimi-code](https://www.kimi.com/code)
- GLM provides [ZCode](https://zcode.z.ai/)
- Qwen provides the [Qoder series](https://qoder.com.cn/)
- Seed provides the [Trae series](https://www.trae.cn/)
- HY provides the [Buddy series](https://www.codebuddy.cn/)
- Mimo provides [mimo-code](https://mimo.xiaomi.com/zh/mimocode) and [mimo-desktop](https://mimo.xiaomimimo.com/desktop/)

DeepSeek is quite special. I think the official tool, DeepSeek Harness, is still insufficiently polished; it is recommended to use Pi, Omp, or [Reasonix](https://reasonix.io/).

## My Personal Evaluation

For model capability and intelligence evaluation, it is recommended to refer to [Artificial Analysis](https://artificialanalysis.ai/), but specific performance still depends on whether the model itself has been degraded and whether the tools match. The following personal evaluation is based on tool + model combinations and is for reference only.

1. 👎︎ Cursor + Composer 2.5 Thinking / Grok 4.7 Thinking
   - Very fast speed
   - Thinking is not excessive, occasionally insufficient
   - Composer 2.5 is suitable for simple tasks like quick Q&A, confirming code locations, confirming code chains, and small fixes; Grok 4.5 is suitable for complex tasks
   - Chinese and English expressions are normal, but occasionally it answers in Chinese to English questions, which does not affect normal use
   - Shift in mindset: If you are more used to using an editor/IDE rather than other CLI/Desktop apps, Cursor is your optimal choice. You need to view Cursor as a top-level model connector for $20 + massive quota Composer 2.5 / Grok 4.7 using tools
   - Inferior to directly subscribing to VS Code + Claude Code / Codex
2. 👍 Claude Code + Official Subscription / Transit API
   - Medium speed
   - It is recommended to set Opus 5.5 Effort Level to high; occasionally overthinking, occasionally degrading, but suitable for daily use
   - Suitable for complex tasks such as planning, architecture determination, and coding tasks; almost no over-engineering, completely no defensive programming
   - One of the best models
3. 👍 Codex + Official Subscription / Transit API
   - Medium speed
   - It is recommended to set GPT 6 Sol Effort Level to high; occasionally overthinking, occasionally degrading, but suitable for daily use
   - Suitable for reviewing plans, architecture, code implementation, etc.; often over-engineered and defensively programmed, prompts can be used to weaken such behaviors
   - One of the best models
4. 👎︎ ZCode + GLM 5.3 / GLM 5.3 Flash
   - Medium speed
   - It is recommended to set GLM 5.3 / GLM 5.3 Flash Effort Level to max
   - GLM 5.3 Max is suitable for complex tasks such as planning and architecture determination; occasionally over-engineered and defensively programmed, frequently overthinking or underthinking, left and right brains fighting each other, but ultimately delivering results
   - GLM 5.3 Flash Max is more suitable for daily use
   - One of the best domestic programming models, but operation is particularly poor; better to just use DeepSeek directly
5. 👍 Qoder + Qwen 3.8 Max
   - Medium-high speed
   - It is recommended to enable thinking; occasionally overthinking, occasionally degrading, occasionally interrupted
   - Suitable for complex tasks such as planning, architecture determination, and coding tasks; occasionally over-engineered
   - Operation is quite good, and the price is reasonably fair
   - One of the best domestic complex programming models
5. 👍 Pi + GLM 5.3 Flash Max + DeepSeek v4.1 Flash Max
   - Medium-high speed
   - It is recommended to set Effort Level to max; almost no overthinking
   - GLM 5.3 Flash Max handles tasks such as planning and architecture determination, while DeepSeek v4.1 Flash Max is responsible for execution
   - Using transit API for open-source projects makes it one of the best domestic daily programming models

## Global Rules Setup

[AGENTS.md](https://agents.md/) is a universal coding agents guide that can be used for global rules setup.

This repository provides [AGENTS.md](./AGENTS.md) which I use myself, along with the shell script used for synchronization. **Note: You need to install [bun](https://bun.com/) and the latest version of [Node.js LTS](https://nodejs.org/).**

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-agents-md.sh)"
```

## Global Packages and Skills Setup

This repository provides the shell script used for my personal global package tools and skills. **Note: You need to install [bun](https://bun.com/) and use the latest version of [Node.js LTS](https://nodejs.org/).**

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-packages-and-skills.sh)"
```

## Acknowledgments

- [AGENTS.md](https://agents.md/)
- [KinetiNode/claude-fable-5-system-prompt-clean](https://github.com/KinetiNode/claude-fable-5-system-prompt-clean)
- [mattpocock/skills](https://github.com/mattpocock/skills)
- [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)
- [tw93/Waza](https://github.com/tw93/Waza)