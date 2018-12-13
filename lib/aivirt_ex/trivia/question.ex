defmodule AivirtEx.Trivia.Question do
  use Ecto.Schema
  import Ecto.Changeset
  alias AivirtEx.Trivia.Game
  alias AivirtEx.Trivia.GameQuestion


  schema "questions" do
    field :category, :string
    field :correct_answer, :string
    field :image_author, :string
    field :image_author_profile, :string
    field :image_url, :string
    field :incorrect_answers, {:array, :string}
    field :text, :string

    many_to_many :games, Game, join_through: GameQuestion
    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:text, :correct_answer, :incorrect_answers, :category, :image_url, :image_author, :image_author_profile])
    |> validate_required([:text, :correct_answer, :incorrect_answers, :category, :image_url, :image_author, :image_author_profile])
  end
end
