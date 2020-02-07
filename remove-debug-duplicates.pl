#!/usr/bin/perl
# vim:ts=4:sw=4:sts=4:et:ai

use strict;
use warnings;

my $oldins="";
my $ins;
my $count=1;

while ($ins = <STDIN>) {
    if ($ins eq $oldins) {
        $count++;
        next;
    }
    print "[$count] $oldins";
    $oldins = $ins;
    $count=1;
}
