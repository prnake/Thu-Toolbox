Source changed from https://github.com/haiwen.

## Sample

若使用官方源安装 (seafile-cli_8.0.1) ，可使用 patch 工具修改 seaf-cli。

```bash
cp /usr/bin/seaf-cli ./seaf-cli
patch -p0 < ./seaf-cli.patch
cp ./seaf-cli /usr/bin/seaf-cli
```

```bash
seaf-cli init -d ~
seaf-cli start
seaf-cli sync -l <library-id> -s https://cloud.tsinghua.edu.cn -d <place-directory> -o <token>
seaf-cli desync -d <existing-folder>
```

也可以直接使用 src 文件夹内的完整版本（仍然需要安装 seaf-cli ）。

```bash
python3 seaf-cli.py init -d ~
python3 seaf-cli.py start
python3 seaf-cli.py sync -l <library-id> -s https://cloud.tsinghua.edu.cn -d <place-directory> -o <token>
python3 seaf-cli.py desync -d <existing-folder>
```

