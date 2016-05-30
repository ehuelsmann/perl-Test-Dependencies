use inc::Module::Install;

name            'Test-Dependencies';
author          'Erik Huelsmann <ehuels@gmail.com>';
version_from        'lib/Test/Dependencies.pm';
license 'perl';

requires('B::PerlReq');
requires('IPC::Cmd');
requires('Module::CoreList');
requires('PerlReq::Utils');
requires('Pod::Strip');
requires('Test::Builder::Module');

build_requires('Test::Builder::Tester' => 0.64);

no_index directory => "t-data";

auto_install;
WriteAll;
