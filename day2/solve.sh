#!/usr/bin/env bash

set -e

PWD=$(dirname "$0")
$PWD/../ddlog-run $PWD/day2.dl

echo "Part 1 Solution:"
$PWD/../generated/day2_ddlog/target/release/day2_cli < <(cat $PWD/day2.dat <(echo "dump Solution1;")) | wc -l

echo "Part 2 Solution:"
$PWD/../generated/day2_ddlog/target/release/day2_cli < <(cat $PWD/day2.dat <(echo "dump Solution2;")) | wc -l
