use inc::Module::Install;

name            'Test-Dependencies';
author          'Erik Huelsmann <ehuels@gmail.com>';
version_from        'lib/Test/Dependencies.pm';
license 'perl';
perl_version '5.8.1';

requires('Module::CoreList');
requires('Pod::Strip');
requires('Test::Builder::Module');

build_requires('Test::Builder::Tester');

feature 'Legacy (no-arguments) ok_dependencies() invocation',
    -default => 1,
    "CPAN::Meta" => 0,
    "File::Find::Rule::Perl" => 0;

feature '"Heavy" dependency search policy',
    -default => 0,
    'B::PerlReq' => 0,
    'IPC::Cmd' => 0,
    'PerlReq::Utils' => 0;

no_index directory => "t-data";

auto_install;
WriteAll;
