# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixTurbolinks.Repo.insert!(%PhoenixTurbolinks.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


Enum.map(PhoenixTurbolinks.Repo.all(PhoenixTurbolinks.Item),
  fn(item) -> PhoenixTurbolinks.Repo.delete!(item) end
)

Enum.map(1..100,
  fn(x) -> PhoenixTurbolinks.Repo.insert!(%PhoenixTurbolinks.Item{ title: "Item #{x}" }) end
)
