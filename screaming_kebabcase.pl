#!/usr/local/bin/perl
use strict;
use warnings;

$_ = uc($ENV{'POPCLIP_TEXT'} =~ s/([a-z])([A-Z])/$1-$2/gr);   # Split camel cased words
print s/([A-Z])[\-_ ]+([A-Z])/$1-$2/gr;         # Join words
