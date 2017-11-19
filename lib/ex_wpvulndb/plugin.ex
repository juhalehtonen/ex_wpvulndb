defmodule ExWpvulndb.Plugin do
  @moduledoc """
  GETting vulnerabilities affecting WordPress plugins.
  """
  alias ExWpvulndb.Request

  @doc """
  Get all of the vulnerabilities that affect a particular WordPress plugin.

  Slug should be the URL-friendly name of the plugin.
  """
  @spec get_by_slug(String.t) :: tuple()
  def get_by_slug(slug) when is_binary(slug) do
    Request.get("plugins", slug)
  end
  def get_by_slug(_slug), do: {:error, "Invalid slug"}
end
