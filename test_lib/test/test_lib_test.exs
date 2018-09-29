defmodule TestLibTest do
  use ExUnit.Case
  doctest TestLib

  test "greets the world" do
    assert TestLib.hello() == :world
  end
end
