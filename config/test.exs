import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :api_Brecht_De_Boeck_r0838388, Api_Brecht_De_BoeckR0838388.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "api_brecht_de_boeck_r0838388_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api_Brecht_De_Boeck_r0838388, Api_Brecht_De_BoeckR0838388Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "myj14KeS4+brdGl/DHTWvSVPkGmtjBNkEaqeZ4UGL25AFnj3Q4tNUN/ef5fitPIS",
  server: false

# In test we don't send emails.
config :api_Brecht_De_Boeck_r0838388, Api_Brecht_De_BoeckR0838388.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
