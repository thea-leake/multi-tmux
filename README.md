multimux
========

tmux multiplexer perl script

Multimux reads host names from stdin, and after options, and launches ssh sessions to the host names in tmux panes in a single tmux window, with input synchronized.

Usage:
 multimux [--user|-U <user>]  [whitespace delimited hosts]

Inspired by tmux script at: http://www.christoph-egger.org/weblog/entry/33

Written by T. Addison Leake
