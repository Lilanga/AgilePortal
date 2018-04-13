defmodule AgilePortal.UserStory do
  use Ecto.Schema
  import Ecto.Changeset
  alias AgilePortal.UserStory


  schema "user_stories" do
    field :description, :string
    field :rank, :integer
    field :sprint, :integer
    field :storyPoints, :integer
    field :title, :string
    field :user_id, :id

    timestamps()
  end

  @required_fields ~w(title description)a
  @optional_fields ~w(storyPoints rank sprint)a

  @doc false
  def changeset(%UserStory{} = user_story, attrs) do
    user_story
    |> cast(attrs, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> assoc_constraint(:user)
  end
end
