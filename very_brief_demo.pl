#!/usr/local/bin/perl -w

use strict;

# This is just a brief demo of some of the uses of three of the
# meta-methods, 'new', 'get_set', and 'list'. See the pods for full
# details of how to use MethodMaker.

package Foo;

use Class::MethodMaker
  new => 'new',
  get_set => [ qw / foo bar baz / ],
  list => 'some_things';

package main;

my $foo = new Foo;

$foo->foo('foo_value');
$foo->bar('bar_value');
$foo->baz('Baz value: ' . $foo->foo);

print $foo->foo, $/;
print $foo->bar, $/;
print $foo->baz, $/;

$foo->some_things(1, 2, 3);

print join(' ', $foo->some_things), $/;

$foo->push_some_things(4, 5, 6);

print join(' ', $foo->some_things), $/;

print $foo->pop_some_things, $/;

print join(' ', $foo->some_things), $/;

