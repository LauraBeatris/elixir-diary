defmodule Diary.MixProject do
  use Mix.Project

  def project do
    [
      app: :diary,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [
        plt_add_apps: [:ex_unit, :mix],
        plt_file: {:no_warn, "priv/plts/dialyzer.plt"},
      ],

      # Docs
      name: "Elixir Diary",
      source_url: "https://github.com/LauraBeatris/elixir-diary",
      docs: [
        main: "Diary", # The main page in the docs
        logo: ".github/docs/logo.png",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      # Testing
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false},
      {:mix_test_watch, "~> 1.0", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},

      # Utils
      {:poison, "~> 3.1"},
      {:timex, "~> 3.5"},

      # Docs
      {:ex_doc, "~> 0.22", only: :dev, runtime: false},
    ]
  end
end
