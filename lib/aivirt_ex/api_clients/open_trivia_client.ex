defmodule AivirtEx.ApiClients.OpenTriviaClient do
  def get_ten_questions() do
    case HTTPoison.get("https://opentdb.com/api.php?amount=10") do
      {:ok, %{body: raw_body, status_code: code}} -> {code, raw_body}
      {:error, %{reason: reason}} -> {:error, reason}
    end
  end
end
