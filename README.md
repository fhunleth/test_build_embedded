# test_build_embedded

This project consists of a test app and a test lib. The `test_lib` was created
with `mix new test_lib`. It contains a trivial C program that's built using
`elixir_make`. The `test_app` directory was also created with `mix new`. It has
a path dependency to `test_lib` and `:build_embedded` set to `true`.

This is a test of where the C program is built.

```sh
# If you've been experimenting, be sure to clean out any build products.
$ git clean -fdx

$ cd test_app
$ MIX_TARGET=rpi3 mix do deps.get, compile

# I've set it up so that the $MIX_TARGET sets up a separate build directory.
# test_app depends on test_lib which has C source code that prints out the
# $MIX_TARGET.

$ _build/rpi3/dev/lib/test_lib/priv/hello
hello, rpi3

# Now try changing the $MIX_TARGET to something else.

$ MIX_TARGET=bbb mix do deps.get, compile
$ _build/bbb/dev/lib/test_lib/priv/hello
hello, rpi3
```

