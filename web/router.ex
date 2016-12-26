defmodule Balls.Router do
  use Balls.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Balls do
    pipe_through :api
  end
end
