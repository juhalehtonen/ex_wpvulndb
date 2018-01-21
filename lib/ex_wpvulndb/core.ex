defmodule ExWpvulndb.Core do
  @moduledoc """
  GETting vulnerabilities affecting WordPress core.
  """
  alias ExWpvulndb.Request
  alias Poison.Parser

  @doc """
  Get all of the vulnerabilities that affect a particular WordPress core version.

  WP version should be given in either formats `4.8.3`, or without dots, `483`.

  The function will transform versions given in the dotted format to the one
  without dots.
  """
  @spec get_by_version(String.t()) :: tuple()
  def get_by_version(version) when is_binary(version) do
    version = String.replace(version, ".", "")

    with {:ok, body} <- Request.get("wordpresses", version),
         {:ok, body} <- Parser.parse(body) do
      {:ok, body}
    else
      {:error, reason} -> {:error, reason}
      _ -> {:error, "Error getting WP core vulnerabilities"}
    end
  end

  def get_by_version(_version), do: {:error, "Invalid version"}
end
