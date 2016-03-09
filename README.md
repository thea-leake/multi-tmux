multimux
========

Tmux ssh multiplexer script


Multimux reads host names from stdin, and after options, and launches ssh sessions to the host names in tmux panes in a single tmux window, with input synchronized. 
Multimux expects to be run from an existing tmux session, and will launch ssh sessions in new window.

As it is using stdin for hosts hosts can be piped in, given as arguments after options, or in file passed in as argument.

Hosts are separated by whitespace when given as arguments, and separated by whitespace or newlines when piped in, or read from file.

--sync syncronizes input across panes - multiplexes keystrokes to all nodes

--user speficifies user to log in to nodes as

--verbose gives verbose output - mostly tmux commands that are run

Order for named arguments does not matter, however if hosts or a file are specified as arguments they must be last.


Usage:
 multimux [--user|-U user] [--sync|-S] [--verbose] [--extended-opts 'quote_wrapped_additional_ssh_args'] [ path_to_hosts_file | whitespace_separated_hosts ]

Idea taken from: http://www.christoph-egger.org/weblog/entry/33

Written by T. Addison Leake
