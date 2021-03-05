defmodule PhotoBlog.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      # implicit :id, :integer, auto_increment

      add :body, :text, null: false
      add :user_id, references(:users), null: false
      add :eventDate, :string, null: false
      add :title, :string, null: false

      timestamps() # created_at, updated_at
    end

  end
end
