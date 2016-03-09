Multimux
========

**About multimux:**
Multimux is a tmux ssh multiplexer script - similar to csshX, but for tmux :)


Multimux expects to be run from an existing tmux session, and will launch ssh sessions in a "new" window.
	Note: it will change the originating windows index in tmux, as it actually breaks the originating pane from the window to a new window.



**Usage**: 
`multimux [--user|-U user] [--sync|-S] [--verbose] [--extended-opts 'quote_wrapped_additional_ssh_args'] [ whitespace_separated_hosts ] [ < path_to_file ] `


Hosts can be piped in, given as arguments, or in file redirected to stdin: `< path`.  


Hosts are indivdual arguments when passed as arguments, and separated by whitespace or newlines when piped in or read from file.

It can only read from one source of STDIN -file redirected or piped in, but it can combine host arguments and STDIN hosts. 



All arguments are optional, order does not matter:

 - `--sync` syncronizes input across panes - multiplexes keystrokes to all nodes.


 - `--user username` speficifies user to log in to nodes as.


 - `--verbose` gives verbose output - mostly tmux commands that are run.


 - `--extended-opts 'ssh options'` is a quote wrapped string of any additional ssh options, for example `--extended-opts '-vvv -A -p 2222'` would give extra verbose output, key forwarding and use port 2222 for all the ssh connections.
	The same effect can be had for individual hosts by quote wrapping hosts with arguments, such as `'-p 2222 superspecialhost'`.

 - flagless arguments are interpreted as hosts


**Examples:**
 - `multimux node-{0..5}.mydomain.com`  Creates a window with ssh sessions to the six nodes given as arguments.
 - `multimux -S -U me -E '-p 2200' node-{0..5}.mydomain.com` Same as above, with input syncronized initially, user 'me' and ssh port 2200.
 - `multimux < my_node_file`  Creates a window with ssh sessions to hosts separated by newlines and/or spaces.
 - `cat my_node_file | multimux` Same as above.
 - `multimux -S -U me -E '-p 2200' node-{0..5}.mydomain.com < my_node_file` Combination of examples above - nodes specified in arguments, and file, with options described above.


========
Idea taken from: http://www.christoph-egger.org/weblog/entry/33.

========
Written by Addison Leake
