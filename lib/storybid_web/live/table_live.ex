defmodule StorybidWeb.TableLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
      Hello <%= @name %> <%= @count %>
      <button phx-click="inc">Inc</button>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, name: "Someone", count: 0)}
  end

  def handle_event("inc", _, socket) do
    {:noreply, assign(socket, count: socket.assigns.count + 1)}
  end
end
