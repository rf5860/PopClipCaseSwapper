#!/usr/local/bin/perl
use strict;
use warnings;

print map {s/(?:[-_ ]|^)\K([a-z0-9])/\U$1/giur} (split /^/, lc $ENV{'POPCLIP_TEXT'})