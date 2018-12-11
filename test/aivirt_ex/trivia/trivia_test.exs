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
end
