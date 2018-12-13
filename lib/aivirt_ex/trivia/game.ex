defmodule AivirtEx.Trivia.Game do
  use Ecto.Schema
  import Ecto.Changeset
  alias AivirtEx.Trivia.Question
  alias AivirtEx.Trivia.GameQuestion

  schema "games" do
    many_to_many :questions, Question, join_through: GameQuestion
    timestamps()
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [])
    |> validate_required([])
  end
end
