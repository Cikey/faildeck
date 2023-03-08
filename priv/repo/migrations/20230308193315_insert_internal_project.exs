defmodule Faildeck.Repo.Migrations.InsertInternalProject do
  use Ecto.Migration

  def change do
    Faildeck.Repo.insert!(%Faildeck.Project.Project{id: 1, key: "FAIL", name: "Faildeck-Internal"})
  end
end
