defmodule TwitterbotTest do
  use ExUnit.Case
  doctest Twitterbot

  test "greets the world" do
    assert Twitterbot.hello() == :world
  end
end
