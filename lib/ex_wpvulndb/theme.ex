defmodule ExWpvulndb.Theme do
  @moduledoc """
  GETting vulnerabilities affecting WordPress themes.
  """
  alias ExWpvulndb.Request

  @doc """
  Get all of the vulnerabilities that affect a particular WordPress theme.

  Slug should be the URL-friendly name of the theme.
  """
  def get_by_slug(slug) when is_binary(slug) do
    Request.get("themes", slug)
  end
  def get_by_slug(_slug), do: {:error, "Invalid slug"}
end
