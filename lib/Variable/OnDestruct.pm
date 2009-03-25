package Variable::OnDestruct;

use strict;
use warnings;
use base qw/DynaLoader Exporter/;

##no critic ProhibitAutomaticExportation
our @EXPORT = qw/on_destruct/;

our $VERSION = '0.02';

bootstrap Variable::OnDestruct $VERSION;

1;    # End of Variable::OnDestruct

__END__

=head1 NAME

Variable::OnDestruct - Call a subroutine on destruction of a variable.

=head1 VERSION

Version 0.01

=cut

=head1 SYNOPSIS

    use Variable::OnDestruct;

	on_destruct $var, sub { do_something() };
	on_destruct @array, sub { do_something_else() };
	on_destruct %array, sub { hashes_work_too() };

=head1 DESCRIPTION

This module allows you to let a function be called when a variable gets destroyed. The destructor will work not only on scalars but also on arrays and hashes.

=head1 FUNCTIONS

This module contains one function, which is exported by default.

=head2 on_destruct $variable, \&sub;

This function adds a destructor to a variable. 

=head1 AUTHOR

Leon Timmermans, C<< <leont at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-devel-ondestruct at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Variable-OnDestruct>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Variable::OnDestruct


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Variable-OnDestruct>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Variable-OnDestruct>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Variable-OnDestruct>

=item * Search CPAN

L<http://search.cpan.org/dist/Variable-OnDestruct>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Leon Timmermans, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut
