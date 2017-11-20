defmodule ExWpvulndb.RequestTest do
  use ExUnit.Case
  alias ExWpvulndb.Request
  doctest ExWpvulndb.Request

  test "Sending a valid request succeeds" do
    assert {:ok, _response} = Request.get("wordpresses", "483")
  end

  test "Sending a request to a nonexistent URL fails with 404" do
    assert {:error, "404: not found"} = Request.get("givemethe404", "error")
  end
end
