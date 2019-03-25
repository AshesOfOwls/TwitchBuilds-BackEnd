defmodule TbawWeb.Router do
  use TbawWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: TbawWeb.Schema,
      interface: :simple,
      context: %{pubsub: TbawWeb.Endpoint}
  end
end
