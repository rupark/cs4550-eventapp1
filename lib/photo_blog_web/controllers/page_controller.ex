# Adapted from https://github.com/NatTuck/scratch-2021-01/tree/master/4550/0223/photo_blog
defmodule PhotoBlogWeb.PageController do
  use PhotoBlogWeb, :controller

  alias PhotoBlog.Posts

  def index(conn, _params) do
    posts = Posts.list_posts()
    render(conn, "index.html", posts: posts)
  end
end
