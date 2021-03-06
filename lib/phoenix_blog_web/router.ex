defmodule PhoenixBlogWeb.Router do
  use PhoenixBlogWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixBlogWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/aboutme", PageController, :aboutme
  end

  scope "/api", PhoenixBlogWeb do
    pipe_through :api
    resources "/articles", ArticleController, except: [:new, :edit]
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixBlogWeb do
  #   pipe_through :api
  # end
end
