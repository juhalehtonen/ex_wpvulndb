defmodule ExWpvulndb.PluginTest do
  use ExUnit.Case
  alias ExWpvulndb.Plugin
  doctest ExWpvulndb.Plugin

  test "Requesting plugin vulnerabilities for an existing plugin succeeds" do
    assert {:ok, _body} = Plugin.get_by_slug("eshop")
  end

  test "Requesting plugin vulnerabilities for a nonexisting plugin fails with 404 error" do
    assert {:error, "404: not found"} = Plugin.get_by_slug("notathingthatexists")
  end

  test "Requesting plugin vulnerabilities with invalid slug type fails" do
    assert {:error, _reason} = Plugin.get_by_slug(:atom)
  end
end
