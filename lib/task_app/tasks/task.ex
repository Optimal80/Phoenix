defmodule TaskApp.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :copleted, :boolean, default: false
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:description, :copleted])
    |> validate_required([:description, :copleted])
  end
end
