#!perl

use Test::More 0.98;
use Test::Needs;

use_ok('Test::Dependencies');
use_ok('Test::Dependencies::Light');

subtest "Heavy Loading" => sub {
    test_needs + {
        'B::PerlReq'     => 0,
        'PerlReq::Utils' => 0,
    };
    use_ok('Test::Dependencies::Heavy');
};

done_testing;
