#!perl

use Test::Builder::Tester tests => 2;
use Test::Dependencies;

chdir "t-data/empty";

test_out("not ok 1 - Missing META.{yml,json} file for dependency checking");
test_fail(+2);
test_diag("Use the non-legacy invocation to provide the info");
ok_dependencies();
test_test("empty directory fails to find META.yml");

chdir "../../t-data/mostly-empty";

test_out("ok 1 - META.yml is present and readable");
ok_dependencies();
test_test("mostly empty directory works just fine");
