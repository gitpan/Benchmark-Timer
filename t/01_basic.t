# ========================================================================
# t/00_basic.t - ensure that Benchmark::Timer object can be created and used
# Andrew Ho (andrew@zeuscat.com)
#
# Test basic usage of the Benchmark::Timer library.
#
# Because timings will differ from system to system, we can't actually
# test the functionality of the module. So we just test that all the
# method calls run without triggering exceptions.
#
# This script is intended to be run as a target of Test::Harness.
#
# Last modified March 29, 2001
# ========================================================================

use strict;
use Test;

BEGIN { plan tests => 12 }


# ------------------------------------------------------------------------
# Basic tests of the Benchmark::Timer library.

use Benchmark::Timer;
ok(1);

my $timer = Benchmark::Timer->new;
ok($timer ? 1 : 0);

$timer->reset;
ok(1);

$timer->start('tag');
$timer->stop;
ok(1);

$timer->report;
ok(1);

my $result = $timer->result('tag');
ok(defined $result ? 1 : 0);

my @results = $timer->results;
ok(@results == 2 ? 1 : 0);

my $results = $timer->results;
ok(ref $results eq 'ARRAY' ? 1 : 0);

my @data = $timer->data('tag');
ok(@data == 1 ? 1 : 0);

my $data = $timer->data('tag');
ok(ref $data eq 'ARRAY' ? 1 : 0);

@data = $timer->data;
ok(@data == 2 ? 1 : 0);

$data = $timer->data;
ok(ref $data eq 'ARRAY' ? 1 : 0);


# ========================================================================
__END__
