use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :tbaw, TbawWeb.Endpoint,
  secret_key_base: "urEwZiITqTXCxeeMRsiXZtS4RhdWNnU1+NhiHhiL4keOGbkmBkM2VA+WymkBhcJ/"

# Configure your database
config :tbaw, Tbaw.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "tbaw_prod",
  pool_size: 15
