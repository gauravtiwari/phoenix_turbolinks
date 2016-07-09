defmodule PhoenixTurbolinks.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :title, :string

      timestamps()
    end

  end
end
