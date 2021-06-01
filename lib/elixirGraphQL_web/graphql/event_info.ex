defmodule ElixirGraphQLWeb.Graphql.EventInfo do
  alias ElixirGraphQL.Modules.Guests.GuestsRepo
  alias ElixirGraphQL.Modules.Activities.ActivityRepo
  alias ElixirGraphQL.Repo

  require Logger

  import Ecto.Query, only: [from: 2]

  def get_guests, do: Repo.all(GuestsRepo)

  def create_guest(args) do
    %GuestsRepo{}
    |> GuestsRepo.changeset(args)
    |> Repo.insert()
  end

  def get_events, do: Repo.all(ActivityRepo)

  def create_event(args) do
    %ActivityRepo{}
    |> ActivityRepo.changeset(args)
    |> Repo.insert()
  end
end
