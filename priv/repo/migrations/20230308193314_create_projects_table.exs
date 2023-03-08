defmodule Faildeck.Repo.Migrations.CreateProjectsTable do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :key, :string, null: false
      add :name, :string, null: false
      timestamps()
    end

    create unique_index(:projects, [:key])
    create unique_index(:projects, [:name])
  end
end
