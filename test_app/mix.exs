defmodule TestApp.MixProject do
  use Mix.Project

  @target System.get_env("MIX_TARGET") || Mix.raise("set MIX_TARGET=<something>")

  def project do
    [
      app: :test_app,
      version: "0.1.0",
      elixir: "~> 1.7",
      deps_path: "deps/#{@target}",
      build_path: "_build/#{@target}",
      lockfile: "mix.lock.#{@target}",
      start_permanent: Mix.env() == :prod,
      build_embedded: true,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:test_lib, path: "../test_lib"},
    ]
  end
end
