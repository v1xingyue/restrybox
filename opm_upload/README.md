opm molly
---
opm package sample

```shell
cat dist.ini

name = opmmolly
abstract = opm molly example 
author = v1xingyue
license = mit 
repo_link = https://github.com/v1xingyue/opmmolly
is_original = yes

```

配置github:

```shell

# your github account name (either your github user name or github organization that you owns)
github_account=v1xingyue

# you can generate a github personal access token from the web UI: https://github.com/settings/tokens
# IMPORTANT! you are required to assign the scopes "user:email" and "read:org" to your github token.
# you should NOT assign any other scopes to your token due to security considerations.
github_token=

# the opm central server for uploading openresty packages.
upload_server=https://opm.openresty.org

# the opm server for downloading openresty packages.
download_server=https://opm.openresty.org

```

压缩, 上传:

```shell

opm build
opm upload

```


一个例子:

[opmmolly](https://github.com/v1xingyue/opmmolly)
