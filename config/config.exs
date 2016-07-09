# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_turbolinks,
  ecto_repos: [PhoenixTurbolinks.Repo]

# Configures the endpoint
config :phoenix_turbolinks, PhoenixTurbolinks.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QpJnAk7s3AiA+MLMlKUqTI4zTToIHZMssnHOSD/zYM0PmMs7IgY1xFEM/T7VL7aT",
  render_errors: [view: PhoenixTurbolinks.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixTurbolinks.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
