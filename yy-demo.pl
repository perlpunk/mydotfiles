#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;
use YAML::PP::Highlight;

my %data = (
    foo => qr{abc}i,
    sub => sub {
        say "hello",
    },
    bar => bless [3, 1, 4], 'SomeObject',
);

my $data = 'string';


warn "# ".__PACKAGE__.':'.__LINE__.$".'$data'."\n".YAML::PP::Highlight::Dump($data);
warn "# ".__PACKAGE__.':'.__LINE__.$".'%data'."\n".YAML::PP::Highlight::Dump(\%data);

