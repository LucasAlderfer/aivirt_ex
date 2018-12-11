use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :aivirt_ex, AivirtExWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :aivirt_ex, AivirtEx.Repo,
  username: System.get_env("PGSQL_USER"),
  password: System.get_env("PGSQL_PASSWORD"),
  database: "aivirt_ex_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
