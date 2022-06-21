defmodule TaskApp.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :description, :string
      add :copleted, :boolean, default: false, null: false

      timestamps()
    end
  end
end
