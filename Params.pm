package Params;

use strict;
use warnings;

use Getopt::Long;
Getopt::Long::Configure("pass_through");

my $help;
my @hosts;
my $user;

GetOptions (
	'help|H' => \$help,
	'user|U=s' => \$user,
);

sub GetParams {
       my %tmp = (
       	  'user' => $user,  
	  'hosts' => \@ARGV
       );
       return %tmp
}

if ($help){
	print "Usage:\n multimux [--user|-U <user>]  <whitespace delimited hosts>\n";
	exit 0;
}

1;
