#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Devel::OnDestruct' );
}

diag( "Testing Devel::OnDestruct $Devel::OnDestruct::VERSION, Perl $], $^X" );
