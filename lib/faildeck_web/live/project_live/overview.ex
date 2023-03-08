defmodule FaildeckWeb.ProjectLive.Overview do
  use FaildeckWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, stream(socket, :projects, Faildeck.Project.all)}
  end
end
