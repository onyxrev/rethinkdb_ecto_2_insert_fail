use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :balls, Balls.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :balls, Balls.Repo,
  adapter: RethinkDB.Ecto,
  username: "postgres",
  password: "postgres",
  database: "balls_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
