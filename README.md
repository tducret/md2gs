# md2gs

[![Docker Build Status](https://img.shields.io/docker/build/thibdct/md2gs.svg)](https://hub.docker.com/r/thibdct/md2gs/)
![License](https://img.shields.io/github/license/tducret/md2gs.svg)

`md2gs` allows you to use [md2gslides](https://github.com/gsuitedevs/md2googleslides) *(a cool program to convert a Markdown file to Google slides)* without installing node on your computer.

All you need is bash and Docker.

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/tducret/md2gs/master/get-md2gs.sh | sh
```

## Usage

```bash
md2gs path/to/my_presentation.md
md2gs --title "Greatest presentation ever" path/to/my_presentation.md

md2gs --upgrade  # To upgrade md2gs to the latest version
md2gs --uninstall  # To remove the Docker image and delete md2gs script
```