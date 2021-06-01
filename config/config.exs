# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixirGraphQL,
  ecto_repos: [ElixirGraphQL.Repo]

config :elixirGraphQL, ElixirGraphQL.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :elixirGraphQL, ElixirGraphQLWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "28zyyviYAS1V4xz8EXcAHU3gWb5Jl4PtzaCSN3TAbpceWX/nSILougP55YkiFcgN",
  render_errors: [view: ElixirGraphQLWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ElixirGraphQL.PubSub,
  live_view: [signing_salt: "nmmhJvef"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
