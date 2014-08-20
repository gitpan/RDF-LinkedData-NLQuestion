use strict;
use warnings;

use Test::More tests => 6;

use RDF::LinkedData::NLQuestion;

my $NLQuestion = RDF::LinkedData::NLQuestion->new();
ok( defined($NLQuestion) && ref $NLQuestion eq 'RDF::LinkedData::NLQuestion',     'new() works' );

$NLQuestion->verbose(0);
$NLQuestion->configFile("t/nlquestion-v0.rc");
ok($NLQuestion->configFile eq "t/nlquestion-v0.rc", "configFile works");

$NLQuestion->loadConfig;
ok(defined($NLQuestion->config), "loadconfig and config work");

$NLQuestion->configFile("t/nlquestion.rc");
ok($NLQuestion->configFile eq "t/nlquestion.rc", "configFile works (second version)");

$NLQuestion->loadConfig;
ok(defined($NLQuestion->config), "loadconfig and config work (second version)");

# $NLQuestion->_loadSemtypecorresp('en');
ok(defined($NLQuestion->semtypecorresp),"_loadSemtypecorresp works");
