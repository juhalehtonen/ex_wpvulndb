defmodule ExWpvulndb.Theme do
  @moduledoc """
  GETting vulnerabilities affecting WordPress themes.
  """
  alias ExWpvulndb.Request
  alias Poison.Parser

  @doc """
  Get all of the vulnerabilities that affect a particular WordPress theme.

  Slug should be the URL-friendly name of the theme.
  """
  @spec get_by_slug(String.t) :: tuple()
  def get_by_slug(slug) when is_binary(slug) do
    with {:ok, body} <- Request.get("themes", slug),
         {:ok, body} <- Parser.parse(body)
    do
      {:ok, body}
    else
      {:error, reason} -> {:error, reason}
      _                -> {:error, "Error getting theme vulnerabilities"}
    end
  end
  def get_by_slug(_slug), do: {:error, "Invalid slug"}
end
