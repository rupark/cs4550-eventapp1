# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhotoBlog.Repo.insert!(%PhotoBlog.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PhotoBlog.Repo
alias PhotoBlog.Users.User
alias PhotoBlog.Posts.Post

alice = Repo.insert!(%User{name: "alice"})
bob = Repo.insert!(%User{name: "bob"})

p1 = %Post{
  user_id: alice.id,
  # photo_hash: "",
  body: "Alice says Hi!",
  eventDate: "1999-09-10",
  title: "birthday"
}
Repo.insert!(p1)

p2 = %Post{
  user_id: bob.id,
  # photo_hash: "",
  body: "Bob ate Pizza!",
  eventDate: "1999-09-10",
  title: "birthday 2" 
}
Repo.insert!(p2)
