defmodule Faildeck.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      FaildeckWeb.Telemetry,
      # Start the Ecto repository
      Faildeck.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Faildeck.PubSub},
      # Start Finch
      {Finch, name: Faildeck.Finch},
      # Start the Endpoint (http/https)
      FaildeckWeb.Endpoint
      # Start a worker by calling: Faildeck.Worker.start_link(arg)
      # {Faildeck.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Faildeck.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    FaildeckWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
