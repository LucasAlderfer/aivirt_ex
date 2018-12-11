defmodule AivirtEx.Repo do
  use Ecto.Repo,
    otp_app: :aivirt_ex,
    adapter: Ecto.Adapters.Postgres
end
