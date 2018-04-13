defmodule AgilePortal.Repo.Migrations.CreateUserStories do
  use Ecto.Migration

  def change do
    create table(:user_stories) do
      add :title, :string
      add :description, :text
      add :storyPoints, :integer
      add :rank, :integer
      add :sprint, :integer
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:user_stories, [:user_id])
  end
end
