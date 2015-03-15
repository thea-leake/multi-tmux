multimux
========

tmux multiplexer perl script

This iteration requires the username on the local machine to match the machines that are being ssh'd to, or the user to be specified in your users ssh config.

Multimux reads host names from stdin, and launches ssh sessions to the host names in tmux panes in a single tmux window, with input synchronized.

Inspired by tmux script at: http://www.christoph-egger.org/weblog/entry/33

Usage:
 multimux [--user|-U <user>]  <whitespace delimited hosts>

Inspired by tmux script at: http://www.christoph-egger.org/weblog/entry/33

Written by T. Addison Leake
