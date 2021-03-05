# Adapted from https://github.com/NatTuck/scratch-2021-01/tree/master/4550/0223/photo_blog
defmodule PhotoBlog.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :title, :string
    field :eventDate, :string

    belongs_to :user, PhotoBlog.Users.User
    # we have a field user_id
    # which contains an id for a User

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    # This is where we do object validation
    post
    |> cast(attrs, [:body, :title, :user_id, :eventDate])
    |> validate_required([:body, :title, :user_id, :eventDate])
  end
end
