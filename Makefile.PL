# ========================================================================
# Makefile.PL - generate Makefile for Benchmark::Timer Perl module
# Andrew Ho (andrew@zeuscat.com)
#
# Usage: perl Makefile.PL
# See the Timer.pm file for documentation about this module.
#
# Last modified March 23, 2001
# ========================================================================

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Benchmark::Timer',
    VERSION_FROM  => 'Timer.pm',
    ABSTRACT_FROM => 'Timer.pm',
    PM            => {
        'Timer.pm' => '$(INST_LIBDIR)/Timer.pm',
    },
    PREREQ_PM     => {
        'Time::HiRes' => 0,
    },
);

exit 0;


# ========================================================================
__END__
