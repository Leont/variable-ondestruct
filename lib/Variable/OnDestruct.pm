package Variable::OnDestruct;

use strict;
use warnings;
use Exporter 5.57 'import';
use XSLoader;

##no critic (ProhibitAutomaticExportation)
our @EXPORT = qw/on_destruct/;
our @EXPORT_OK = qw/on_destruct_fifo/;

XSLoader::load('Variable::OnDestruct', __PACKAGE__->VERSION);

1;    # End of Variable::OnDestruct

#ABSTRACT: Call a subroutine on destruction of a variable.

=head1 SYNOPSIS

    use Variable::OnDestruct;

	on_destruct $var, sub { do_something() };
	on_destruct @array, sub { do_something_else() };
	on_destruct %array, sub { hashes_work_too() };
	on_destruct &$sub, sub { so_do_closures($but_not_normal_subs) };
	on_destruct *$glob, sub { and_even_globs($similar_caveats_as_subs_though) };

=head1 DESCRIPTION

This module allows you to let a function be called when a variable gets destroyed. The destructor will work not only on scalars but also on arrays, hashes, subs and globs. For the latter two you should realize that most of them aren't scoped like normal variables. Subs for example will only work like you expect them to when they are closures.

=func on_destruct $variable, \&sub;

This function adds a destructor to a variable. It is exported by default.

=func on_destruct_fifo $variable, \&sub;

This function adds a destructor to a variable. When adding multiple destructors, this will execute them in fifo order, unlike C<on_destruct> which will handle them in lifo order.
