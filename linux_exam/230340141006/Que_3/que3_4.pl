#!/bin/user/perl -w
use strict;

sub read_file {
    my $filename = shift;
    open(my $fh, '<', $filename) or die "Cannot open file: $!";
    my $data = do { local $/; <$fh> };
    close($fh);
    return $data;
}

sub write_file {
    my ($filename, $data) = @_;
    open(my $fh, '>', $filename) or die "Cannot open file: $!";
    print $fh $data;
    close($fh);
}

my $filename = "quotes.txt";
my $data_to_write = "Success is not an event, it will happen gradually.";
write_file($filename, $data_to_write);

my $read_data = read_file($filename);
print "Data from file: $read_data\n";

