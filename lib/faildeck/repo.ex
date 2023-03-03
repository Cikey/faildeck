defmodule Faildeck.Repo do
  use Ecto.Repo,
    otp_app: :faildeck,
    adapter: Ecto.Adapters.Postgres
end
