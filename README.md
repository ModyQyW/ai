# AI

English | [简体中文](./README.zh-CN.md)

> This doc is translated by [Agnes 2.5 Flash](https://agnes-ai.com/).

> Last updated on 2026-08-07, please check if the information is still current.

> If you are a beginner, this repository is most likely not suitable for you. I recommend starting your AI journey with [Cherry Studio](https://docs.cherry-ai.com/), [DeepSeek Chat](https://chat.deepseek.com/), and [Yuanbao](https://yuanbao.tencent.com/).

My personal global rules for AI Coding Agents.

## Background

In my daily work, I use Cursor, Claude Code, and Codex simultaneously, primarily developing TypeScript and React applications. For open-source projects, I mainly use Reasonix. They have different underlying designs and vary in performance. I'm trying to unify my experience across different Coding Agents and models, which is why this repository exists.

Your actual situation is likely different from mine, so I highly recommend forking this repository and customizing it yourself.

## Models

From the perspectives of code quality and cost-effectiveness, Opus and GPT are the best choices among overseas models, while Kimi K3, Qwen 3.8 Max, and DeepSeek are the best choices among domestic models.

> **Never skimp on models! The most expensive cost in programming is often rework time, not the time spent on top-tier models!**
>
> The easiest way to use Opus and GPT in China is to purchase a relay/proxy service. The relay service must not add water (downgrade quality) or maliciously intercept requests, as this severely affects usage. I personally recommend [aicentos](https://aicentos.com/sign-up?aff=mgM8), [AiGoCode](https://aigocode.com/invite/7XH6NZZZ), and [CCSub](https://www.ccsub.net/register?ref=TUM8D23V).

## Tools

For overseas tools, **Claude Code** > Codex > Cursor >> OpenCode

Claude Code has the best engineering implementation, smooth usage, and easy model integration.

The latest version of Codex is restricted to the Responses API only, but few models support it, making it quite limited. If you really want to use it, you can use [CC Switch](https://ccswitch.io/) or [opencodex](https://github.com/lidge-jun/opencodex) to connect.

> 👍 If you have the means, please sponsor and support these excellent open-source projects!

Cursor only has pay-as-you-go pricing, and its engineering implementation is not as good as Claude Code and Codex. They are now heavily pushing their own Composer and Grok models, and accessing third-party models requires payment first. This seems a bit awkward right now.

OpenCode is purely open-source with relatively poor engineering implementation, many experience details are not polished, and its only advantage is being open and controllable. I suggest not using it, and also not buying OpenCode's products, as there are suspicions of quantization and context truncation 😅

For overseas models, I recommend considering only Claude Code and Codex.

> Grok has not been tested.

The situation for domestic tools is more complex. Model providers often offer official tools that you can use directly, such as:

- Kimi provides [kimi-code](https://www.kimi.com/code)
- GLM provides [ZCode](https://zcode.z.ai/)
- Qwen provides [Qoder series](https://qoder.com.cn/)
- Seed provides [Trae series](https://www.trae.cn/)
- HY provides [Buddy series](https://www.codebuddy.cn/)

DeepSeek is particularly special. It currently has no official tool, so I recommend using [https://reasonix.io/](https://reasonix.io/) or [Maka](https://github.com/maka-agent/maka-agent).

## My Personal Evaluation

For model capability and intelligence assessment, I recommend referring to [Artificial Analysis](https://artificialanalysis.ai/), but actual performance still depends on whether the model has degradation, tool compatibility, etc. The following are my personal evaluations based on tool + model combinations, for reference only.

> Grok and Kimi have not been tested and are not listed here.

1. 👎︎ Cursor + Composer 2.5 Thinking / Grok 4.5 Thinking
   - Very fast
   - Thinking is not excessive, occasionally insufficient
   - Composer 2.5 is suitable for quick Q&A, confirming code locations, tracing code flow, minor fixes, and other simple tasks; Grok 4.5 is suitable for complex tasks
   - Normal Chinese and English expression, but occasionally answers in Chinese when asked in English, which doesn't affect normal usage
   - Mindset shift: If you're more accustomed to using an editor/IDE rather than CLI/Desktop apps, Cursor is your best choice. You should treat Cursor as a $20 top-tier model adapter + a tool with a generous Composer 2.5 / Grok 4.5 quota
   - Not as good as directly using VS Code + Claude Code / Codex subscription
2. 👍 Claude Code + Official Subscription / Relay
   - Medium speed
   - Recommended to set Opus 4.8 Effort Level to high or extra; occasionally overthinks, occasionally underperforms
   - Recommended to set Opus 5 Effort Level to medium or high; occasionally overthinks, occasionally underperforms. Higher Effort Levels lead to more frequent overthinking
   - Suitable for planning, architecture decisions, and coding tasks; rarely over-engineers, never defensive programming
   - Opus 4.7, 4.8 have a heavy AI-flavored Chinese expression; reportedly distilled from GPT-5.4 and Qwen. If you need Chinese, you can use Opus 4.6, but I recommend prioritizing Opus 4.8 / 5 with 200k context
3. 👍 Codex + Official Subscription / Relay
   - Medium-low speed
   - Recommended to set Effort Level to high / xhigh; occasionally overthinks, occasionally underperforms
   - Use GPT 5.6 Terra high for daily use, GPT 5.6 Sol high for complex tasks
   - Suitable for reviewing plans, architecture, and code implementations; frequently over-engineers and does defensive programming; this behavior can be mitigated with prompts
   - GPT 5.6 has normal Chinese and English expression
4. 👎︎ ZCode + GLM 5.2
   - Medium-low speed
   - Recommended to set Effort Level to max; often overthinks and has left-brain/right-brain conflicts, but can still deliver results; continuously degrades in quality
   - Suitable for planning, architecture decisions, and coding tasks; occasionally over-engineers and does defensive programming
   - One of the best domestic programming models, but poor operations — oversold + nearly impossible to buy + plan benefits changed multiple times. Better to use DeepSeek directly
5. 👍 Qoder + Qwen 3.8 max
   - Medium-high speed
   - Recommended to enable thinking; occasionally overthinks, occasionally underperforms, occasionally interrupted
   - Suitable for planning, architecture decisions, and coding tasks; occasionally over-engineers
   - Operations are decent, prices are reasonable
   - One of the best domestic programming models
5. 👍 Reasonix + DeepSeek v4
   - Fast most of the time, sometimes slow
   - Recommended to set Effort Level to max; almost never overthinks
   - Flash is suitable for planning, architecture decisions, and coding tasks; Pro is suitable for complex tasks; almost never over-engineers or does defensive programming
   - No subscription plans, but the pricing and cache rate are excellent for direct API usage
6. 👎︎ OpenCode / ZCode + Mimo 2.5 Thinking
   - Medium-high speed
   - Suitable for quick Q&A, confirming code locations, tracing code flow, minor fixes, and other simple tasks
   - Especially prone to going off track with complex problems; reluctant to call Skills

## Global Rules Configuration

[AGENTS.md](https://agents.md/) is a universal guide for Coding Agents and can be used for global rule configuration.

This repository provides my personal [AGENTS.md](./AGENTS.md) along with shell scripts for synchronization. **Note: You need to install [bun](https://bun.com/) and the latest version of [Node.js LTS](https://nodejs.org/).**

```shell
/bin/bash -c"$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-agents-md.sh)"
```

## Global Packages and Skills Configuration

This repository provides shell scripts for the global package tools and Skills I use. **Note: You need to install [bun](https://bun.com/) and use the latest version of [Node.js LTS](https://nodejs.org/).**

```shell
/bin/bash -c"$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-packages-and-skills.sh)"
```

## Acknowledgments

- [AGENTS.md](https://agents.md/)
- [KinetiNode/claude-fable-5-system-prompt-clean](https://github.com/KinetiNode/claude-fable-5-system-prompt-clean)
- [mattpocock/skills](https://github.com/mattpocock/skills)
- [multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills)
- [tw93/Waza](https://github.com/tw93/Waza)