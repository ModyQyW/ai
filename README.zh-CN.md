# AI

[English](./README.md) | 简体中文

> 如果你是一个新手，本仓库大概率不适合你。推荐先从 [Cherry Studio](https://docs.cherry-ai.com/)、[Deepseek Chat](https://chat.deepseek.com/) 和 [元宝](https://yuanbao.tencent.com/) 开始你的 AI 之旅。

自用的 AI Coding Agent 全局规则。

## 背景

在工作中，我同时使用 Cursor，Claude Code 和 Codex。在开源上，我同时使用 Claude Code 和 OpenCode。它们的底层设计各异，表现也各不相同，我试图统一我在不同 Coding Agent、不同模型上的体验，因此有了该仓库。

## 模型

根据代码质量和性价比这两方面来看，海外模型中 Opus 和 GPT 是最佳选择，国内模型中 GLM、Deepseek 是最佳选择。

> 绝对不要在模型上省钱！编程最贵的成本往往是返工时间，而非顶尖模型浪费的时间比顶尖模型多得多得多！
>
> 国内用上 Opus 和 GPT 最简单的方案就是买中转站。中转站不能掺水，或者恶意拦截，否则极其影响使用。个人推荐 [FishXCode](https://fishxcode.com/register?aff=WAjK)、[AiGoCode](https://aigocode.com/invite/7XH6NZZZ) 和 [CCSub](https://www.ccsub.net/register?ref=TUM8D23V)。

## 工具

**Claude Code** > Codex > Cursor > OpenCode

Claude Code 的工程化做得最好，使用流畅，各家模型接入也容易。

Codex 最新版限制了只能接入 Responses API，但很少模型支持，限制较大。

Cursor 只有按量计费，工程化做得不如 Claude Code 和 Codex。现在强推自家的 Composer 模型，要接入第三方还要先付费。在当下显得有些笨拙。

OpenCode 纯开源，工程化甚至不如 Cursor，只胜在开源可控 😅

Claude Code 应该总是作为第一选择。如果不懂得如何接入，可以使用 [CC Switch](https://ccswitch.io/zh/)。

## 我的选择

截至 2026-05-19：

1. Cursor + Composer 2.5 Thinking (no fast)
   - 速度很快
   - 思考从不过度，偶尔思考不足
   - 适合做快速问答、确认代码位置、确认代码链路、小修小改等相关工作
   - 中英文表达正常，但偶尔会出现英文提问中文回答的情况，不影响正常使用
2. Claude Code + 官方订阅 / 中转
   - 速度中等
   - 推荐将 Effort Level 设置为 max，偶尔思考过度
   - 适合做制定计划、架构确定和编码任务等相关工作，几乎不过度设计，完全不防御性编程
   - Opus 4.7 中文表达很重 AI 味，据说是提炼了 GPT5.4，如果需要中文可以用 Opus 4.6
3. Codex + 官方订阅 / 中转
   - 速度中等偏下
   - 推荐将 Effort Level 设置为 xhigh，偶尔思考过度
   - 适合 review 计划、架构、代码实现等，经常过度设计和防御性编程，可以用提示词削弱这类行为
   - 中英文表达正常
4. Claude Code + Deepseek
   - 大部分时候速度很快，有时很慢
   - 推荐将 Effort Level 设置为 max，几乎不思考过度
   - 适合做制定计划、架构确定和编码任务等相关工作，几乎不过度设计和防御性编程
   - 没有套餐，但这定价+缓存完全可以 Pay as you go
5. Claude Code + GLM
   - 速度中等偏下
   - 推荐将 Effort Level 设置为 max，几乎不思考过度
   - 适合做制定计划、架构确定和编码任务等相关工作，几乎不过度设计和防御性编程
   - 运营很差，超卖+几乎买不到+套餐权益多次修改

## 全局规则设置

[AGENTS.md](https://agents.md/) 是通用的 Coding Agents 指南，可用于全局规则设置。

本仓库提供了我自己使用的 [AGENTS.md](./AGENTS.md) 以及同步所用的 shell 脚本。**注意，你需要安装 [bun](https://bun.com/) 和最新版本的 [Node.js](https://nodejs.org/) LTS。**

```shell
/bin/bash -c"$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-agents-md.sh)"
```

## 全局包和 Skills 设置

本仓库提供了我自己使用的全局包工具和 Skills 所用的 shell 脚本。**注意，你需要安装 [bun](https://bun.com/) 和 [uv](https://docs.astral.sh/uv/)，并使用最新版本的 [Node.js](https://nodejs.org/) LTS。**

```shell
/bin/bash -c"$(curl -fsSL https://raw.githubusercontent.com/ModyQyW/ai/refs/heads/main/bump-global-packages-and-skills.sh)"
```
