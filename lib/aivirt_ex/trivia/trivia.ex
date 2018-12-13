defmodule AivirtEx.Trivia do
  @moduledoc """
  The Trivia context.
  """

  import Ecto.Query, warn: false
  alias AivirtEx.Repo

  alias AivirtEx.Trivia.Question

  @doc """
  Returns the list of questions.

  ## Examples

      iex> list_questions()
      [%Question{}, ...]

  """
  def list_questions do
    Repo.all(Question)
  end

  @doc """
  Gets a single question.

  Raises `Ecto.NoResultsError` if the Question does not exist.

  ## Examples

      iex> get_question!(123)
      %Question{}

      iex> get_question!(456)
      ** (Ecto.NoResultsError)

  """
  def get_question!(id), do: Repo.get!(Question, id)

  @doc """
  Creates a question.

  ## Examples

      iex> create_question(%{field: value})
      {:ok, %Question{}}

      iex> create_question(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_question(attrs \\ %{}) do
    %Question{}
    |> Question.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a question.

  ## Examples

      iex> update_question(question, %{field: new_value})
      {:ok, %Question{}}

      iex> update_question(question, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_question(%Question{} = question, attrs) do
    question
    |> Question.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Question.

  ## Examples

      iex> delete_question(question)
      {:ok, %Question{}}

      iex> delete_question(question)
      {:error, %Ecto.Changeset{}}

  """
  def delete_question(%Question{} = question) do
    Repo.delete(question)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking question changes.

  ## Examples

      iex> change_question(question)
      %Ecto.Changeset{source: %Question{}}

  """
  def change_question(%Question{} = question) do
    Question.changeset(question, %{})
  end

  alias AivirtEx.Trivia.Game

  @doc """
  Returns the list of games.

  ## Examples

      iex> list_games()
      [%Game{}, ...]

  """
  def list_games do
    Repo.all(Game)
  end

  @doc """
  Gets a single game.

  Raises `Ecto.NoResultsError` if the Game does not exist.

  ## Examples

      iex> get_game!(123)
      %Game{}

      iex> get_game!(456)
      ** (Ecto.NoResultsError)

  """
  def get_game!(id), do: Repo.get!(Game, id)

  @doc """
  Creates a game.

  ## Examples

      iex> create_game(%{field: value})
      {:ok, %Game{}}

      iex> create_game(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_game(attrs \\ %{}) do
    %Game{}
    |> Game.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a game.

  ## Examples

      iex> update_game(game, %{field: new_value})
      {:ok, %Game{}}

      iex> update_game(game, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_game(%Game{} = game, attrs) do
    game
    |> Game.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Game.

  ## Examples

      iex> delete_game(game)
      {:ok, %Game{}}

      iex> delete_game(game)
      {:error, %Ecto.Changeset{}}

  """
  def delete_game(%Game{} = game) do
    Repo.delete(game)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking game changes.

  ## Examples

      iex> change_game(game)
      %Ecto.Changeset{source: %Game{}}

  """
  def change_game(%Game{} = game) do
    Game.changeset(game, %{})
  end

  alias AivirtEx.Trivia.GameQuestion

  @doc """
  Returns the list of game_questions.

  ## Examples

      iex> list_game_questions()
      [%GameQuestion{}, ...]

  """
  def list_game_questions do
    Repo.all(GameQuestion)
  end

  @doc """
  Gets a single game_question.

  Raises `Ecto.NoResultsError` if the Game question does not exist.

  ## Examples

      iex> get_game_question!(123)
      %GameQuestion{}

      iex> get_game_question!(456)
      ** (Ecto.NoResultsError)

  """
  def get_game_question!(id), do: Repo.get!(GameQuestion, id)

  @doc """
  Creates a game_question.

  ## Examples

      iex> create_game_question(%{field: value})
      {:ok, %GameQuestion{}}

      iex> create_game_question(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_game_question(attrs \\ %{}) do
    %GameQuestion{}
    |> GameQuestion.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a game_question.

  ## Examples

      iex> update_game_question(game_question, %{field: new_value})
      {:ok, %GameQuestion{}}

      iex> update_game_question(game_question, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_game_question(%GameQuestion{} = game_question, attrs) do
    game_question
    |> GameQuestion.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a GameQuestion.

  ## Examples

      iex> delete_game_question(game_question)
      {:ok, %GameQuestion{}}

      iex> delete_game_question(game_question)
      {:error, %Ecto.Changeset{}}

  """
  def delete_game_question(%GameQuestion{} = game_question) do
    Repo.delete(game_question)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking game_question changes.

  ## Examples

      iex> change_game_question(game_question)
      %Ecto.Changeset{source: %GameQuestion{}}

  """
  def change_game_question(%GameQuestion{} = game_question) do
    GameQuestion.changeset(game_question, %{})
  end
end
