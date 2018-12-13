# defmodule AllQuestionsIntegrationTest do
#   use ExUnit.Case, async: true
#   use Plug.Test
#   alias AivirtExWeb.Router
#
#   @opts Router.init([])
#   test "all questions endpoint" do
#     conn = conn(:get, "/api/v1/questions")
#     response = Router.call(conn, @opts)
#     assert response.status == 200
#   end
# end

defmodule AivirtExWeb.QuestionControllerTest do

  use AivirtExWeb.ConnCase

  alias AivirtEx.Trivia

  test "/api/v1/questions responds with all questions", %{conn: conn} do

    questions = [%{category: "Geography",text: "Which country was NOT part of the Soviet Union?",correct_answer: "Romania",incorrect_answers: ["Turkmenistan","Belarus","Tajikistan"],image_url: "https://images.unsplash.com/photo-1510914828947-36f754990aa5?ixlib=rb-1.2.1\u0026q=85\u0026fm=jpg\u0026crop=entropy\u0026cs=srgb\u0026ixid=eyJhcHBfaWQiOjQxMjM5fQ",image_author: "Valentin Antonucci",image_author_profile: "https://unsplash.com/@valentinantonucci"},
                 %{category: "Video Games",text: "In Guild Wars 2, what is the first name of Kasmeer Meade's brother?",correct_answer: "Kyle",incorrect_answers: ["Dave","Kevin","Ken"],image_url: "https://images.unsplash.com/photo-1519087214886-fcd55361ccca?ixlib=rb-1.2.1\u0026q=85\u0026fm=jpg\u0026crop=entropy\u0026cs=srgb\u0026ixid=eyJhcHBfaWQiOjQxMjM5fQ",image_author: "Diego Duarte Cereceda",image_author_profile: "https://unsplash.com/@actiondatsun"}]

    [{:ok, question1}, {:ok, question2}] = Enum.map(questions, &Trivia.create_question(&1))

    response =
      conn
      |> get(Routes.question_path(conn, :index))
      |> json_response(200)

    assert Enum.count(response["data"]) == 2
  end
end
