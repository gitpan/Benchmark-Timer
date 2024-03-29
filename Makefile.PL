#!/usr/bin/perl

use strict;
use inc::Module::Install;

all_from        ('lib/Benchmark/Timer.pm');

requires        (
                  'Time::HiRes' => 0,
                );

test_requires   (
                  'Test::More' => 0,
                );

check_optional  ( 'Statistics::PointEstimation' => 0,
  "Install Statistics::PointEstimation for statistical sampling support\n");

no_index        ('delta.pl');

WriteAll();
