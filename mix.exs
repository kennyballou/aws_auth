defmodule AWSAuth.Mixfile do
  use Mix.Project

  def project do
    [app: :aws_auth,
     version: "0.6.4",
     elixir: "~> 1.3",
     description: description(),
     package: package(),
     deps: deps(),
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: [coveralls: :test]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 0.2", only: :dev },
      {:ex_doc, "~> 0.11", only: :dev },
      {:excoveralls, "~> 0.4", only: :test},
      {:credo, "~> 0.2.0", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    AWS Signature Version 4 Signing Library
    """
  end

  defp package do
    [
     files: ["lib", "mix.exs", "README*"],
     maintainers: ["Bryan Joseph"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/bryanjos/aws_auth"}
    ]
  end
end
