#!/bin/user/perl -w
use strict;
sub validate_gmail_id {
    my $email = shift;
    if ($email =~ /^[a-zA-Z0-9._%+-]+@gmail\.com$/) {
        return "Your account is valid.";
    } else {
        return "Your account is invalid. Get a new one.";
    }
}

print "Enter an email ID: ";
my $email = <STDIN>;
chomp $email;
my $validation_result = validate_gmail_id($email);
print "$validation_result\n";

