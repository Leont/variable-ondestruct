#!perl -T

use strict;
use Test::More;

use Variable::OnDestruct;
use Symbol qw/gensym/;

sub foo {
}


{
	my $var = 'foo';
	my $sub = sub { $var };

	on_destruct $var, sub { is($_[0], 'foo', "Scalar got destroyed!") };
	on_destruct my @array, sub { pass("Array got destroyed!") };
	on_destruct my %hash, sub { pass("Hash got destroyed!") };
	on_destruct &{ $sub }, sub { pass("Sub got destroyed!" ) };
	on_destruct *{ gensym() }, sub { pass("Glob got destroyed") };
}

{
	my $counter = 0;
	{
		my %hash;
		on_destruct $hash{foo}, sub { $counter++ };
		{
			local $hash{foo};
			is($counter, 0);
		}
		is($counter, 0);
	}
	is($counter, 1);
}

done_testing(8);
