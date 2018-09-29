# build_embedded_test

To run:

```sh
cd test_app
mix deps.get
mix compile
```

If you look at `test_app`'s `mix.exs`, you'll see `build_embedded: true`.  Where
would you expect `test_lib`'s `priv/hello` and `src/hello.o` files to be?

