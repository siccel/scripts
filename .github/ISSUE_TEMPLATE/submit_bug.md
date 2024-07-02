---
name: Bug 提交
about: 使用此模板来提交一个 Bug
title: ''
labels: bug
assignees: ''

---

## BUG 提交

> 请先查看：[Issues 说明](https://github.com/sudojia/scripts/tree/script?tab=readme-ov-file#issues-%E8%AF%B4%E6%98%8E)

**脚本名称**：sudojia_tieba.js

**问题描述**：

在运行贴吧签到时，查看日志发生异常，错误日志如下：

```shell
请求失败：TypeError[ERR_UNESCAPED_CHARACTERS]：Request path contains unescaped characters
```

**重现步骤**：

1. 拉取最新脚本
2. 已按照文档获取并配置了脚本对应的环境变量 TIE_BA_COOKIE
3. 点击运行
4. ...

**运行环境**：

- **面板/工具**：青龙面板 or GitHub Actions
- **Node.js 版本**：输入 node -v 可查看版本
- **服务器是否能正常访问脚本对应的网站**：我已通过 `ping tieba.baidu.com` 和 `curl -I tieba.baidu.com` 来确保能够正常访问该网站

**附加信息**：

- 上传截图
- 任何有助于理解问题的其他信息

**检查清单**：

> - [x] <- 这是打勾 demo，不会 markdown 就复制过去

- [ ] 我已经查看了项目的文档和现有的 Issues，确定这个问题尚未被报告。
- [ ] 我已经按照问题描述提供了足够的信息。
- [ ] 我已经提供了脚本配置和运行环境的详细信息。
- [ ] 我已经确定我的运行环境能够访问脚本对应的网站。
