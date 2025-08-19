# Agent App &amp; Guide Public API Bash client

## Overview

This is a Bash client script for accessing Agent App &amp; Guide Public API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to */v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AppApi* | [**appGet**](docs/AppApi.md#appget) | **GET** /app | 获取 app 列表
*AppApi* | [**appIdIdGet**](docs/AppApi.md#appididget) | **GET** /app/id/{id} | 获取指定 app 信息（按 id）
*AppApi* | [**appPkgPkgnameGet**](docs/AppApi.md#apppkgpkgnameget) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名）
*AppApi* | [**appSearchGet**](docs/AppApi.md#appsearchget) | **GET** /app/search | 搜索 app
*GuideApi* | [**guideGet**](docs/GuideApi.md#guideget) | **GET** /guide | 获取 guide 列表（按关键词）
*GuideApi* | [**guideIdIdGet**](docs/GuideApi.md#guideididget) | **GET** /guide/id/{id} | 获取指定 guide（按 id）
*GuideApi* | [**guidePkgPkgnameGet**](docs/GuideApi.md#guidepkgpkgnameget) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表
*GuideApi* | [**guideSearchPkgnameGet**](docs/GuideApi.md#guidesearchpkgnameget) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度）


## Documentation For Models

 - [App](docs/App.md)
 - [AppItemResponse](docs/AppItemResponse.md)
 - [AppListResponse](docs/AppListResponse.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [Guide](docs/Guide.md)
 - [GuideItemResponse](docs/GuideItemResponse.md)
 - [GuideListResponse](docs/GuideListResponse.md)
 - [GuideSearchResponse](docs/GuideSearchResponse.md)
 - [Paging](docs/Paging.md)


## Documentation For Authorization

 All endpoints do not require authorization.

