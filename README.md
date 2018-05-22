# Curriculum Vitae 

## Build docker image

```
docker build ./docker/ --tag=maxlab.io/xelatex
```

## Build pdf 

```
docker run -v $PWD:/data  maxlab.io/xelatex make pdf install
```

## Continuous build on save

```
docker run -dv $PWD:/data  maxlab.io/xelatex make view
```

## TODO

Lighter docker image
Pre-commit git hook

## Requirements and Compilation

This cv uses [AltaCV](https://github.com/liantze/AltaCV.git), same requirements apply

* pdflatex + biber + pdflatex
* AltaCV uses [`fontawesome`](http://www.ctan.org/pkg/fontawesome) and [`academicons`](http://www.ctan.org/pkg/academicons); they're included in both TeX Live 2016 and MikTeX 2.9.
* Loading `academicons` is optional: enable it by adding the `academicons` option to `\documentclass`.
* Can now be compiled with pdflatex, XeLaTeX and LuaLaTeX!
* However if you're using `academicons`, you _must_ use either XeLaTeX or LuaLaTeX. If the doc then compiles but the icons don't show up in the output PDF, try compiling with LuaLaTeX instead.
* The samples here use the [Lato](http://www.latofonts.com/lato-free-fonts/) font.
