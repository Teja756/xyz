#!/bin/user/perl -w
use strict;
sub remove_vowels {
    my $string = shift;
    $string =~ s/[aeiou]//gi;
    return $string;
}

print "Enter a string: ";
my $input = <STDIN>;
chomp $input;
my $result = remove_vowels($input);
print "String without vowels: $result\n";

