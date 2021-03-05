# Adapted from https://github.com/NatTuck/scratch-2021-01/tree/master/4550/0223/photo_blog
defmodule PhotoBlog.Repo do
  use Ecto.Repo,
    otp_app: :photo_blog,
    adapter: Ecto.Adapters.Postgres
end
