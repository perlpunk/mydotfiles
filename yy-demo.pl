#!/usr/bin/env perl
use 5.012;
use warnings;

my %data = (
    foo => qr{abc}i,
    sub => sub {
        say "hello";
    },
    bar => bless { numbers => [3, 1, 4] }, 'SomeObject',
);

my $multiline = <<"EOM";
multiline
text
with trailing  
spaces
EOM

my $tabs = "string\twith\ttabs";

#warn "# ".__PACKAGE__.':'.__LINE__.$".'$multiline'."\n".YAML::PP::Highlight::Dump($multiline);
#warn "# ".__PACKAGE__.':'.__LINE__.$".'$tabs'."\n".YAML::PP::Highlight::Dump($tabs);
warn "# ".__PACKAGE__.':'.__LINE__.$".'%data'."\n".YAML::PP::Highlight::Dump(\%data);

