defmodule AivirtEx.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :text, :string
      add :correct_answer, :string
      add :incorrect_answers, {:array, :string}
      add :category, :string
      add :image_url, :string
      add :image_author, :string
      add :image_author_profile, :string

      timestamps()
    end

  end
end
