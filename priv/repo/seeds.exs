# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     AivirtEx.Repo.insert!(%AivirtEx.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# questions = [%{category: "Geography",text: "Which country was NOT part of the Soviet Union?",correct_answer: "Romania",incorrect_answers: ["Turkmenistan","Belarus","Tajikistan"],image_url: "https://images.unsplash.com/photo-1510914828947-36f754990aa5?ixlib=rb-1.2.1\u0026q=85\u0026fm=jpg\u0026crop=entropy\u0026cs=srgb\u0026ixid=eyJhcHBfaWQiOjQxMjM5fQ",image_author: "Valentin Antonucci",image_author_profile: "https://unsplash.com/@valentinantonucci"},
#              %{category: "Video Games",text: "In Guild Wars 2, what is the first name of Kasmeer Meade's brother?",correct_answer: "Kyle",incorrect_answers: ["Dave","Kevin","Ken"],image_url: "https://images.unsplash.com/photo-1519087214886-fcd55361ccca?ixlib=rb-1.2.1\u0026q=85\u0026fm=jpg\u0026crop=entropy\u0026cs=srgb\u0026ixid=eyJhcHBfaWQiOjQxMjM5fQ",image_author: "Diego Duarte Cereceda",image_author_profile: "https://unsplash.com/@actiondatsun"}]

# [{:ok, question1}, {:ok, question2}] = Enum.map(questions, &Trivia.create_question(&1))

alias AivirtEx.Trivia

Trivia.create_question(%{category: "Geography",text: "Which country was NOT part of the Soviet Union?",correct_answer: "Romania",incorrect_answers: ["Turkmenistan","Belarus","Tajikistan"],image_url: "https://images.unsplash.com/photo-1510914828947-36f754990aa5?ixlib=rb-1.2.1\u0026q=85\u0026fm=jpg\u0026crop=entropy\u0026cs=srgb\u0026ixid=eyJhcHBfaWQiOjQxMjM5fQ",image_author: "Valentin Antonucci",image_author_profile: "https://unsplash.com/@valentinantonucci"})
# Repo.insert! (%Question{category: "Geography",text: "Which country was NOT part of the Soviet Union?",correct_answer: "Romania",incorrect_answers: ["Turkmenistan","Belarus","Tajikistan"],image_url: "https://images.unsplash.com/photo-1510914828947-36f754990aa5?ixlib=rb-1.2.1\u0026q=85\u0026fm=jpg\u0026crop=entropy\u0026cs=srgb\u0026ixid=eyJhcHBfaWQiOjQxMjM5fQ",image_author: "Valentin Antonucci",image_author_profile: "https://unsplash.com/@valentinantonucci"})
Trivia.create_game(%{})
# Repo.insert! (%Game{})
Trivia.create_game_question(%{game_id: 1, question_id: 1})
# Repo.insert! (%GameQuestion{game_id: 1, question_id: 1})
