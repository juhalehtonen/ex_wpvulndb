defmodule ExWpvulndb.CoreTest do
  use ExUnit.Case
  alias ExWpvulndb.Core
  doctest ExWpvulndb.Core

  test "Requesting vulnerabilities for an existing WP version using dot notation succeeds" do
    assert {:ok, _body} = Core.get_by_version("4.8.3")
  end

  test "Requesting vulnerabilities for an existing WP version using non-dot notation succeeds" do
    assert {:ok, _body} = Core.get_by_version("483")
  end

  test "Requesting vulnerabilities for non-existing WP version fails" do
    assert {:error, _reason} = Core.get_by_version("1234")
  end
end
