package Params;

use strict;
use warnings;

use Getopt::Long;
Getopt::Long::Configure("pass_through");

my $help;
my @hosts;
my $user;
my $sync;
my $verbose;
my $extended;

GetOptions (
	'help|H' => \$help,
	'user|U=s' => \$user,
	'sync|S' => \$sync,
	'verbose' => \$verbose,
	'extended-opts|E=s' => \$extended
);

sub GetParams {
	return (
		'user' => $user,
		'sync' => $sync,
		'verbose' => $verbose,
		'extended' => $extended,
		'hosts' => \@ARGV,
	);
}

if ($help){
	print "Usage:\n multimux [--user|-U <user>] [--sync|-S] [--verbose]"
		. "[--extended-opts|-E 'quote_wrapped_additional_ssh_args']"
		. "[ path_to_hosts_file | whitespace_separated_hosts ]\n\n"
		. "Hosts as arguments must come after other options.";
	exit 0;
}

1;
