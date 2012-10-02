use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Iterator::Diamond',
    license             => 'perl',
    dist_author         => 'Johan Vromans <jv@cpan.org>',
    # dist_version        => '0.03_02',
    dist_version_from   => 'lib/Iterator/Diamond.pm',
    build_requires => {
        'Test::More' => 0,
        'File::Spec' => 0,
    },
    add_to_cleanup      => [ 'Iterator-Diamond-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
