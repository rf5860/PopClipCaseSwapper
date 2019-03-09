#!/usr/local/bin/perl
use strict;
use warnings;

print map {s/([a-z])([A-Z])/$1 $2/gu;s/[-_]/ /gur} (split/^/, $ENV{'POPCLIP_TEXT'})