#!perl -T

use Test::More tests => 3;

use Variable::OnDestruct;

my (@array, %hash);

on_destruct my $var, sub { is($_[0], 'foo', "Scalar got destroyed!") };
$var = 'foo';
on_destruct @array, sub { ok(1, "Array got destroyed!") };
on_destruct %hash, sub { ok(1, "hash got destroyed!") };
