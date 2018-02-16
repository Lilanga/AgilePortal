defmodule AgilePortalWeb.PageController do
  use AgilePortalWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
