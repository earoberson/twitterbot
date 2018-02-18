defmodule Twitterbot do
  use Application
  @moduledoc """
  Documentation for Twitterbot.
  """

  def start(_type, _args) do
    {:ok, _pid} = Twitterbot.TStream.start([])
  end
end
