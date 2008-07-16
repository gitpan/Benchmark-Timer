#line 1
package Module::Install::CheckOptional;

use strict;
use 5.004;

use vars qw( @ISA $VERSION );

use Carp;
# For module install and version checks
use Module::AutoInstall;

use Module::Install::Base;
@ISA = qw( Module::Install::Base );

$VERSION = sprintf "%d.%02d%02d", q/0.1.0/ =~ /(\d+)/g;

# ---------------------------------------------------------------------------

sub check_optional
{
  my $self = shift;

	my $module = shift;
	my $version = shift;
	my $message = shift;

  croak "check_optional requires a dependency and version such as \"Carp => 1.03\""
    unless defined $module and defined $version;

	return if defined Module::AutoInstall::_version_check(
	  Module::AutoInstall::_load($module), $version );

	print<<EOF;
*************************************************************************** 
NOTE: The optional module $module (version $version) is not installed.
EOF

	print "\n$message" if defined $message;
}

1;

# ---------------------------------------------------------------------------

#line 97

