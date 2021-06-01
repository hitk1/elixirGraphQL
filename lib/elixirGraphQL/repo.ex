defmodule ElixirGraphQL.Repo do
  use Ecto.Repo,
    otp_app: :elixirGraphQL,
    adapter: Ecto.Adapters.Postgres
end
