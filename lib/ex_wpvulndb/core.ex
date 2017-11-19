defmodule ExWpvulndb.Core do
  @moduledoc """
  GETting vulnerabilities affecting WordPress core.
  """
  alias ExWpvulndb.Request

  @doc """
  Get all of the vulnerabilities that affect a particular WordPress core version.

  WP version should be given in either formats 4.8.3 or 483.
  """
  def get_by_version(version) when is_binary(version) do
    Request.get("wordpresses", String.replace(version, ".", ""))
  end
  def get_by_version(_version), do: {:error, "Invalid version"}
end
