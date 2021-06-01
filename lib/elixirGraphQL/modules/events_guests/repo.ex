defmodule ElixirGraphQL.Modules.EventsGuests.EventGuestRepo do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  @required_params []

  schema "events_guests" do
    field :event_id, :binary_id
    field :guest_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(events_guest, attrs) do
    events_guest
    |> cast(attrs, @required_params)
    |> validate_required([])
  end
end
