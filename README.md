# md2gs

[![Docker Build Status](https://img.shields.io/docker/cloud/automated/thibdct/md2gs.svg)](https://hub.docker.com/r/thibdct/md2gs/)
[![](https://images.microbadger.com/badges/image/thibdct/md2gs.svg)](https://microbadger.com/images/thibdct/md2gs "Get your own image badge on microbadger.com")
![License](https://img.shields.io/github/license/tducret/md2gs.svg)

`md2gs` allows you to use [md2gslides](https://github.com/gsuitedevs/md2googleslides) *(a cool program to convert a Markdown file to Google slides)*.

**➡️ Without installing node on your computer**.

All you need is **bash and Docker 👍**

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/tducret/md2gs/master/get-md2gs.sh | sh
```

## Usage

```bash
md2gs path/to/my_presentation.md
md2gs --title "Greatest presentation ever" path/to/my_presentation.md
```

Checkout the [example.md](https://raw.githubusercontent.com/gsuitedevs/md2googleslides/master/examples/example.md) on the **md2gslides** repo.

## Upgrade

To upgrade md2gs to the latest version :

```bash
md2gs --upgrade
```

## Uninstall

To remove the Docker image and delete md2gs script :

```bash
md2gs --uninstall
```