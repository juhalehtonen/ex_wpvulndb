defmodule ExWpvulndb.Request do
  @moduledoc """
  Sending HTTP requests to the WPVULNDB API.

  Generally you will not need to interact with this module directly. Instead, you
  might want to use the different modules for making API calls, which then refer
  to this module for their request needs.
  """
  @api_url "https://wpvulndb.com/api/v2/"

  @doc """
  Send a GET request with a given API action and params.
  """
  @spec get(String.t, String.t) :: tuple()
  def get(action, param) when is_binary(action) and is_binary(param) do
    url     = @api_url <> action <> "/" <> param
    headers = [{"Content-type", "application/x-www-form-urlencoded"}]

    case HTTPoison.get(url, headers) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, body}
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        {:error, "404: not found"}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, reason}
      _ ->
        {:error, "Failed to GET"}
    end
  end
  def post(_action, _param), do: {:error, "Action and param must be binaries"}
end
