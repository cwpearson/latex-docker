# latex-docker

Inspired by [blang/latex-docker](https://github.com/blang/latex-docker)

There are 5 tags available at [cwpearson/latex](https://hub.docker.com/r/cwpearson/latex/):

| tag | ubuntu packages |
| -- | -- |
| cwpearson/latex:base    | `graphviz`, `inkscape`, `make`, `python`, `python-tk`, `python-pip` `texlive-base` |
| cwpearson/latex:science | base + `texlive-science` |
| cwpearson/latex:tikz    | science + `texlive-latex-extra`, `texlive-pictures`, `pgf` |
| cwpearson/latex:heavy   | base + `texlive-full` without languages, documentation |
| cwpearson/latex:full    | heavy + `texlive-full` |

| tag | pip packages |
| -- | -- |
| cwpearson/latex:base    | `pandas`, `seaborn` |
| cwpearson/latex:science | base |
| cwpearson/latex:tikz    | base |
| cwpearson/latex:heavy   | base |
| cwpearson/latex:full    | base |

`cwpearson/latex:latest` points to `cwpearson/latex:full`

To run this in bash, try something like:

    docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data cwpearson/latex:heavy "$@"

To run in a makefile, try something like:

    USR := $(shell id -u)
    GRP := $(shell id -g)
    PWD := $(shell pwd)
    DOCKER = docker run --rm -i --user="${USR}:${GRP}" --net=none -v "${PWD}":/data cwpearson/latex:tikz
    all:
	    ${DOCKER} pdflatex <latex file>