multimux
========

tmux multiplexer perl script

This iteration requires the username on the local machine to match the machines that are being ssh'd to, or the user to be specified in your users ssh config.

Multimux reads host names from stdin, and launches ssh sessions to the host names in tmux panes in a single tmux window, with input synchronized.


Written by T. Addison Leake
