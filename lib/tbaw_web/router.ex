defmodule TbawWeb.Router do
  use TbawWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TbawWeb do
    pipe_through :api
  end
end
