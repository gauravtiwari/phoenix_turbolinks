defmodule PhoenixTurbolinks.PageController do
  use PhoenixTurbolinks.Web, :controller
  alias PhoenixTurbolinks.Item

  def index(conn, _params) do
    items = Repo.all(Item)
    render conn, "index.html", items: items
  end

  def show(conn, %{"id" => id}) do
    item = Repo.get!(Item, id)
    render conn, "show.html", item: item
  end
end
