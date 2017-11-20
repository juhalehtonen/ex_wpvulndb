defmodule ExWpvulndb.ThemeTest do
  use ExUnit.Case
  alias ExWpvulndb.Theme
  doctest ExWpvulndb.Theme

  test "Requesting theme vulnerabilities for an existing theme succeeds" do
    assert {:ok, _body} = Theme.get_by_slug("pagelines")
  end

  test "Requesting theme vulnerabilities for a nonexisting theme fails with 404 error" do
    assert {:error, "404: not found"} = Theme.get_by_slug("notathingthatexists")
  end

  test "Requesting theme vulnerabilities with invalid slug type fails" do
    assert {:error, _reason} = Theme.get_by_slug(:atom)
  end
end
