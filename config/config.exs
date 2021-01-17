# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phoenix_elixir_hello_world, PhoenixElixirHelloWorldWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YMFqCrjm2PLhxEmgV/hy5RO2DzYUJC4Uskr1rx0t92p0quARypKk/T2j8H1OUX6o",
  render_errors: [view: PhoenixElixirHelloWorldWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixElixirHelloWorld.PubSub,
  live_view: [signing_salt: "5OgCtd97"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
