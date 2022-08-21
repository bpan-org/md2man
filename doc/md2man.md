md2man
======

Markdown to man page converter

## Synopsis

```
md2man doc/foo.md > man/man1/man.1
export MANPATH=man:$MANPATH
man foo
```

## Description

This is a simple tool that converts GFM Markdown read from stdin, to a groff
format (for man pages) printed to stdout.

It is a wrapper around pandoc and Perl's `pod2man`.

I find that this produces the best looking man pages generated from Markdown
(compared to every other tool I've tried so far).

## Installation

Using [BPAN](https://github.com/bpan-org/bpan):

```
bpan install md2man
```

## Authors

* Ingy döt Net <ingy@ingy.net>

## Copyright and License

Copyright 2022 by Ingy döt Net

This is free software, licensed under:

The MIT (X11) License
