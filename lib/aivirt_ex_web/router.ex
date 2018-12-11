defmodule AivirtExWeb.Router do
  use AivirtExWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", AivirtExWeb do
    pipe_through :api
    get "/questions", QuestionController, :index
  end
end
