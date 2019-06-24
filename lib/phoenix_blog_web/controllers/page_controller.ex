defmodule PhoenixBlogWeb.PageController do
  use PhoenixBlogWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def aboutme(conn, _params) do
    render(conn, "aboutme.html")
  end
end
