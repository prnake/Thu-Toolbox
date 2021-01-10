# 清华云盘 Cli 使用指南

## 获取 token

由于清华云盘使用单点验证，无法通过用户名和密码登录，因此 `Seafile` 官方提供的工具均需要修改以支持直接使用 `Token` 登录，而用户也需要提前获取登录 `Token`。
在浏览器中登录，`Cookie` 中的 `seahub_auth` 应该为 `用户名（学号@tsinghua.edu.cn）@Token` 的模式，最后一段即为 `Token` 。

## 方法一：使用 `seaf-cli` 工具

该方法只修改了官方的`seaf-cli`工具，使其支持直接使用 `Token` 登录。需要安装 `seafile-deamon`，直接安装参考 [Install Seafile Client on Linux](https://help.seafile.com/syncing_client/install_linux_client/)，手动编译参考[Build Seafile Client](https://github.com/ypid/seafile-wiki/blob/master/Build-and-use-seafile-client-from-source.md)。
然后参考文档使用 `seaf-cli.py` 工具同步。

## 方法二：使用 `python-seafile` API

该方法使用了一个 `Seafile` 官方长期未维护的 Python API，无软件依赖。

