defmodule Faildeck.Project.Project do
  use Ecto.Schema

  schema "projects" do
    field :key, :string
    field :name, :string
    timestamps()
  end
end
