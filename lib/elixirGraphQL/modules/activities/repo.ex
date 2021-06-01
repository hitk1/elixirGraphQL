defmodule ElixirGraphQL.Modules.Activities.ActivityRepo do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @required_params [:name, :date_event]

  schema "activities" do
    field :date_event, :date
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(activity, attrs) do
    activity
    |> cast(attrs, @required_params)
    |> validate_required(@required_params)
  end
end
