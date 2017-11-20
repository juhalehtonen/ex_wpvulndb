defmodule ExWpvulndb.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_wpvulndb,
      version: "0.2.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "ex_wpvulndb",
      source_url: "https://github.com/juhalehtonen/ex_wpvulndb"
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
      {:poison, "~> 3.1"},
      {:httpoison, "~> 0.11.2"},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.14", only: :dev}
    ]
  end

  defp description() do
    "A minimal API wrapper for the WPScan Vulnerability Database API."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "ex_wpvulndb",
      # These are the default files included in the package
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Juha Lehtonen"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/juhalehtonen/ex_wpvulndb"}
    ]
  end
end
