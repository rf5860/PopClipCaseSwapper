#!/usr/local/bin/perl
use strict;
use warnings;

$_ = ($ENV{'POPCLIP_TEXT'} =~ s/([a-z])([A-Z])/$1 $2/gr);  # Split already camel cased words
$_ = (lc($_) =~ s/([a-z])[\-_ ]+([a-z])/$1\U$2/gr);        # Join words, and upper-case the rightmost character
print s/(?:[\-_ ]|^)\K([a-z])/\U$1/gr;                         # Capitalise first character
