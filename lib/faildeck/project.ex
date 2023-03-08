defmodule Faildeck.Project do
  @moduledoc """
  Project context.
  """

  alias Faildeck.Project
  alias Faildeck.Repo

  ## CRUD access

  def all(), do: Repo.all(Project.Project)
end
