defmodule OpenTriviaClientTest do
  use ExUnit.Case, async: true

  alias AivirtEx.ApiClients.OpenTriviaClient

  test "The client returns JSON containing 10 random questions" do
      raw_response = OpenTriviaClient.get_ten_questions()
      response = Jason.decode!(elem(raw_response, 1))
      assert Enum.count(response["results"]) == 10
    end
end
