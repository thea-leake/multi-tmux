multimux
========

Tmux ssh multiplexer script


Multimux reads host names from stdin, and after options, and launches ssh sessions to the host names in tmux panes in a single tmux window, with input synchronized. 

Multimux expects to be run from an existing tmux session, and will launch ssh sessions in "new" window.

Note: it will change the originating windows index in tmux, as it actually breaks the originating pane from the window to a new window.

As it is using STDIN for hosts hosts can be piped in, given as arguments after options, or in file passed redirected to stdin (<).

Hosts are separated by whitespace when given as arguments, and separated by whitespace or newlines when piped in, or read from file.

--sync syncronizes input across panes - multiplexes keystrokes to all nodes

--user speficifies user to log in to nodes as

--verbose gives verbose output - mostly tmux commands that are run

--extended-opts is a quote wrapped string of any additional ssh options, for example '-vvv -A -p 2222' would give extra verbose output, key forwarding and use port 2222 for all the ssh connections.
The same effect can be had for individual hosts by quote wrapping hosts with arguments, such as '-p 2222 superspecialhost'.


Usage: `multimux [--user|-U user] [--sync|-S] [--verbose] [--extended-opts 'quote_wrapped_additional_ssh_args'] [ whitespace_separated_hosts ] [ < path_to_file ] `

Idea taken from: http://www.christoph-egger.org/weblog/entry/33

Written by Addison Leake
