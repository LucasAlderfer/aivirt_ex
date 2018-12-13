defmodule AivirtEx.Repo.Migrations.CreateGameQuestions do
  use Ecto.Migration

  def change do
    create table(:game_questions) do
      add :game_id, references(:games, on_delete: :nothing)
      add :question_id, references(:questions, on_delete: :nothing)

      timestamps()
    end

    create index(:game_questions, [:game_id])
    create index(:game_questions, [:question_id])
  end
end
