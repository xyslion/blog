---
title: "Bash_upgrade"
date: 2019-07-22T13:50:34+08:00
category: "mac"
tags: ["mac", "bash", "shell"]
---

## Mac升级bash到最新版本

先检查当前`bash`版本信息

```shell
$ /bin/bash --version
GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin18)
Copyright (C) 2007 Free Software Foundation, Inc.
```

使用`brew`安装最新的bash

如果没有安装`brew`的:

```shell
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

使用`brew`安装最新的bash:

```shell
$ brew install bash
```

替换bash

```shell
$ sudo mv /bin/bash /bin/bash.origin
$ sudo ln -s /usr/local/bin/bash /bin/bash 
```

使用brew安装应用时, 默认会在`/usr/local/bin`目录下生成相应可执行文件
