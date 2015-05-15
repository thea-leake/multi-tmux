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
);

sub GetParams {
	return (
		'user' => $user,
		'sync' => $sync,
		'verbose' => $verbose,
		'hosts' => \@ARGV,
	);
}

if ($help){
	print "Usage:\n multimux [--user|-U <user>] [--sync|-U] [--verbose] [HOST ...]\n";
	exit 0;
}

1;
