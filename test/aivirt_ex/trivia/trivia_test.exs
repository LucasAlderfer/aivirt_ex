defmodule AivirtEx.TriviaTest do
  use AivirtEx.DataCase

  alias AivirtEx.Trivia

  describe "questions" do
    alias AivirtEx.Trivia.Question

    @valid_attrs %{category: "some category", correct_answer: "some correct_answer", image_author: "some image_author", image_author_profile: "some image_author_profile", image_url: "some image_url", incorrect_answers: [], text: "some text"}
    @update_attrs %{category: "some updated category", correct_answer: "some updated correct_answer", image_author: "some updated image_author", image_author_profile: "some updated image_author_profile", image_url: "some updated image_url", incorrect_answers: [], text: "some updated text"}
    @invalid_attrs %{category: nil, correct_answer: nil, image_author: nil, image_author_profile: nil, image_url: nil, incorrect_answers: nil, text: nil}

    def question_fixture(attrs \\ %{}) do
      {:ok, question} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Trivia.create_question()

      question
    end

    test "list_questions/0 returns all questions" do
      question = question_fixture()
      assert Trivia.list_questions() == [question]
    end

    test "get_question!/1 returns the question with given id" do
      question = question_fixture()
      assert Trivia.get_question!(question.id) == question
    end

    test "create_question/1 with valid data creates a question" do
      assert {:ok, %Question{} = question} = Trivia.create_question(@valid_attrs)
      assert question.category == "some category"
      assert question.correct_answer == "some correct_answer"
      assert question.image_author == "some image_author"
      assert question.image_author_profile == "some image_author_profile"
      assert question.image_url == "some image_url"
      assert question.incorrect_answers == []
      assert question.text == "some text"
    end

    test "create_question/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Trivia.create_question(@invalid_attrs)
    end

    test "update_question/2 with valid data updates the question" do
      question = question_fixture()
      assert {:ok, %Question{} = question} = Trivia.update_question(question, @update_attrs)
      assert question.category == "some updated category"
      assert question.correct_answer == "some updated correct_answer"
      assert question.image_author == "some updated image_author"
      assert question.image_author_profile == "some updated image_author_profile"
      assert question.image_url == "some updated image_url"
      assert question.incorrect_answers == []
      assert question.text == "some updated text"
    end

    test "update_question/2 with invalid data returns error changeset" do
      question = question_fixture()
      assert {:error, %Ecto.Changeset{}} = Trivia.update_question(question, @invalid_attrs)
      assert question == Trivia.get_question!(question.id)
    end

    test "delete_question/1 deletes the question" do
      question = question_fixture()
      assert {:ok, %Question{}} = Trivia.delete_question(question)
      assert_raise Ecto.NoResultsError, fn -> Trivia.get_question!(question.id) end
    end

    test "change_question/1 returns a question changeset" do
      question = question_fixture()
      assert %Ecto.Changeset{} = Trivia.change_question(question)
    end
  end

  describe "games" do
    alias AivirtEx.Trivia.Game

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def game_fixture(attrs \\ %{}) do
      {:ok, game} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Trivia.create_game()

      game
    end

    test "list_games/0 returns all games" do
      game = game_fixture()
      assert Trivia.list_games() == [game]
    end

    test "get_game!/1 returns the game with given id" do
      game = game_fixture()
      assert Trivia.get_game!(game.id) == game
    end

    test "create_game/1 with valid data creates a game" do
      assert {:ok, %Game{} = game} = Trivia.create_game(@valid_attrs)
    end

    test "create_game/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Trivia.create_game(@invalid_attrs)
    end

    test "update_game/2 with valid data updates the game" do
      game = game_fixture()
      assert {:ok, %Game{} = game} = Trivia.update_game(game, @update_attrs)
    end

    test "update_game/2 with invalid data returns error changeset" do
      game = game_fixture()
      assert {:error, %Ecto.Changeset{}} = Trivia.update_game(game, @invalid_attrs)
      assert game == Trivia.get_game!(game.id)
    end

    test "delete_game/1 deletes the game" do
      game = game_fixture()
      assert {:ok, %Game{}} = Trivia.delete_game(game)
      assert_raise Ecto.NoResultsError, fn -> Trivia.get_game!(game.id) end
    end

    test "change_game/1 returns a game changeset" do
      game = game_fixture()
      assert %Ecto.Changeset{} = Trivia.change_game(game)
    end
  end

  describe "game_questions" do
    alias AivirtEx.Trivia.GameQuestion

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def game_question_fixture(attrs \\ %{}) do
      {:ok, game_question} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Trivia.create_game_question()

      game_question
    end

    test "list_game_questions/0 returns all game_questions" do
      game_question = game_question_fixture()
      assert Trivia.list_game_questions() == [game_question]
    end

    test "get_game_question!/1 returns the game_question with given id" do
      game_question = game_question_fixture()
      assert Trivia.get_game_question!(game_question.id) == game_question
    end

    test "create_game_question/1 with valid data creates a game_question" do
      assert {:ok, %GameQuestion{} = game_question} = Trivia.create_game_question(@valid_attrs)
    end

    test "create_game_question/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Trivia.create_game_question(@invalid_attrs)
    end

    test "update_game_question/2 with valid data updates the game_question" do
      game_question = game_question_fixture()
      assert {:ok, %GameQuestion{} = game_question} = Trivia.update_game_question(game_question, @update_attrs)
    end

    test "update_game_question/2 with invalid data returns error changeset" do
      game_question = game_question_fixture()
      assert {:error, %Ecto.Changeset{}} = Trivia.update_game_question(game_question, @invalid_attrs)
      assert game_question == Trivia.get_game_question!(game_question.id)
    end

    test "delete_game_question/1 deletes the game_question" do
      game_question = game_question_fixture()
      assert {:ok, %GameQuestion{}} = Trivia.delete_game_question(game_question)
      assert_raise Ecto.NoResultsError, fn -> Trivia.get_game_question!(game_question.id) end
    end

    test "change_game_question/1 returns a game_question changeset" do
      game_question = game_question_fixture()
      assert %Ecto.Changeset{} = Trivia.change_game_question(game_question)
    end
  end
end
