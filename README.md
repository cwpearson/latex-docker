# latex-docker

Inspired by [blang/latex-docker](https://github.com/blang/latex-docker)

There are 5 tags available at [cwpearson/latex](https://hub.docker.com/r/cwpearson/latex/):

| tag | packages |
| -- | -- |
| cwpearson/latex:base    | `texlive-base` |
| cwpearson/latex:science | base + `texlive-science` |
| cwpearson/latex:tikz    | science + `texlive-latex-extra`, `texlive-pictures`, `pgf` |
| cwpearson/latex:heavy   | base, + `texlive-full` without languages, documentation
| cwpearson/latex:full    | heavy + `texlive-full`

`cwpearson/latex:latest` points to `cwpearson/latex:full`

To run this in bash, try something like:

    docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data cwpearson/latex:heavy "$@"
