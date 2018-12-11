defmodule AivirtExWeb.QuestionController do

  use AivirtExWeb, :controller
  alias AivirtEx.Trivia

  def index(conn, _params) do
    questions = Trivia.list_questions()
    render(conn, "index.json", questions: questions)
  end

end
