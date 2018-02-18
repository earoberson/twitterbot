defmodule Twitterbot.MixProject do
  use Mix.Project

  def project do
    [
      app: :twitterbot,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :extwitter, :poison],
      mod: {Twitterbot, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:oauther, "~> 1.1"},
      {:extwitter, "~> 0.8"},
      {:distillery, "~> 1.0.0"}
    ]
  end
end
