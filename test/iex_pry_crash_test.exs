defmodule IexPryCrashTest do
  use ExUnit.Case

  require IEx

  test "greets the world" do
    IEx.pry()

    assert IexPryCrash.hello() == :world
  end
end
