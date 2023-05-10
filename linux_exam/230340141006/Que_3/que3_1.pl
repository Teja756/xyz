#!/bin/user/perl -w
use strict;

#Sorting Numbers:
#perl

sub sort_numbers {
    my @numbers = @_;
    my $n = scalar @numbers;
    for my $i (0..$n-1) {
        for my $j ($i+1..$n-1) {
            if ($numbers[$i] > $numbers[$j]) {
                ($numbers[$i], $numbers[$j]) = ($numbers[$j], $numbers[$i]);
            }
        }
    }
    return @numbers;
}

print "Enter 5 numbers: ";
my $input = <STDIN>;
chomp $input;
my @numbers = split(' ', $input);
my @sorted_numbers = sort_numbers(@numbers);
print "Sorted numbers: " . join(' ', @sorted_numbers) . "\n";

