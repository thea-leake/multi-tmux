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

GetOptions (
	'help|H' => \$help,
	'user|U=s' => \$user,
	'sync|S' => \$sync,
	'verbose' => \$verbose,
	'extended-opts' => \$extended
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
		. "[--extended-opts <quote wrapped additional ssh args]"
		. "[ path_to_hosts_file | whitespace_separated_hosts ]\n";
	exit 0;
}

1;
