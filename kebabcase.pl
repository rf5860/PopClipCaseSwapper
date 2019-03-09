#!/usr/local/bin/perl
use strict;
use warnings;

$_ = lc($ENV{'POPCLIP_TEXT'} =~ s/([a-z])([A-Z])/$1-$2/gr);   # Split camel cased words
print s/([a-z])[\-_ ]+([a-z])/$1-$2/gr;         # Join words
