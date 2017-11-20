defmodule ExWpvulndb.Plugin do
  @moduledoc """
  GETting vulnerabilities affecting WordPress plugins.
  """
  alias ExWpvulndb.Request
  alias Poison.Parser

  @doc """
  Get all of the vulnerabilities that affect a particular WordPress plugin.

  Slug should be the URL-friendly name of the plugin.
  """
  @spec get_by_slug(String.t) :: tuple()
  def get_by_slug(slug) when is_binary(slug) do
    with {:ok, body} <- Request.get("plugins", slug),
         {:ok, body} <- Parser.parse(body)
    do
      {:ok, body}
    else
      {:error, reason} -> {:error, reason}
      _                -> {:error, "Error getting plugin vulnerabilities"}
    end
  end
  def get_by_slug(_slug), do: {:error, "Invalid slug"}
end
