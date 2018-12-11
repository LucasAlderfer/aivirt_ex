defmodule AivirtExWeb.QuestionView do

  use AivirtExWeb, :view

  def render("index.json", %{questions: questions}) do
    %{data: render_many(questions, AivirtExWeb.QuestionView, "question.json")}
  end

  def render("question.json", %{question: question}) do
    %{question: question.text, correct_answer: question.correct_answer, incorrect_answers: question.incorrect_answers, image_url: question.image_url, image_author: question.image_author, image_author_profile: question.image_author_profile}
  end

end
