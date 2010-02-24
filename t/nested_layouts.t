#!perl

use strict;
use warnings;
use Test::More;
use Tenjin;

my $t = Tenjin->new({path => ['t/data/nested_layouts']});
ok($t, 'Got a proper Tenjin instance');

is(
  $t->render('inside_layout.html', {_content => 'fake'}),
  '<outside><inside>fake</inside></outside>',
  'Single level of layouts work'
);

done_testing();
