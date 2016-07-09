defmodule PhoenixTurbolinks.PageController do
  use PhoenixTurbolinks.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
