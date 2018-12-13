defmodule AivirtEx.Trivia.GameQuestion do
  use Ecto.Schema
  import Ecto.Changeset


  schema "game_questions" do
    belongs_to :game, Game
    belongs_to :question, Question

    timestamps()
  end

  @doc false
  def changeset(game_question, attrs) do
    game_question
    |> cast(attrs, [])
    |> validate_required([])
  end
end
