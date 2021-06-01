defmodule ElixirGraphQLWeb.Graphql.Resolver do
  alias ElixirGraphQL.Modules.Guests.GuestsRepo
  alias ElixirGraphQLWeb.Graphql.EventInfo

  def guests(_args, _info) do
    {:ok, EventInfo.get_guests()}
  end

  def create_guest(args, _info) do
    with {:ok, guest} <- EventInfo.create_guest(args) do
      {:ok, guest}
    else
      {:error, reason} -> {:error, "Fail to create a new guest"}
    end
  end

  def events(_args, _info) do
    {:ok, EventInfo.get_events()}
  end

  def create_event(args, _info) do
    with {:ok, event} <- EventInfo.create_event(args) do
      {:ok, event}
    else
      {:error, reason} -> {:error, "Fail to create a new event"}
    end
  end
end
