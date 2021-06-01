defmodule ElixirGraphQLWeb.Router do
  use ElixirGraphQLWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirGraphQLWeb do
    pipe_through :api
  end

  # forward "/graph" Absinthe.Plug, schema: ElixirGraphQLWeb.Graphql.Schema
  forward "/graph", Absinthe.Plug, schema: ElixirGraphQLWeb.Graphql.Schema
  forward "/graphiql", Absinthe.Plug.GraphiQL, schema: ElixirGraphQLWeb.Graphql.Schema

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: ElixirGraphQLWeb.Telemetry
    end
  end
end
