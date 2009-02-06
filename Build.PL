use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Devel::OnDestruct',
    license             => 'perl',
    dist_author         => 'Leon Timmermans <leont@cpan.org>',
    dist_version_from   => 'lib/Devel/OnDestruct.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Devel-OnDestruct-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
