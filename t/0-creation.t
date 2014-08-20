use strict;
use warnings;

use Test::More tests => 1;

use RDF::LinkedData::NLQuestion;

my $NLQuestion = RDF::LinkedData::NLQuestion->new();
ok( defined($NLQuestion) && ref $NLQuestion eq 'RDF::LinkedData::NLQuestion',     'new() works' );


