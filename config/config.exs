# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tbaw,
  ecto_repos: [Tbaw.Repo]

# Configures the endpoint
config :tbaw, TbawWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a3GJgTGVSK2SfLkvZkLC+dp7VXabWbOS3TRX0qaNlOKyMucsH197v9h5GgEPFVP8",
  render_errors: [view: TbawWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Tbaw.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
