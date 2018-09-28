# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@admin = User.create(
  username: "Admin",
  role: "admin",
  email: "admin@faq.de",
  password: "123456",
  password_confirmation: "123456"
)
@user = User.create(
  username: "Benutzer1",
  email: "benutzer2@faq.de",
  password: "123456",
  password_confirmation: "123456"
)
User.create(
  username: "Benutzer2",
  email: "benutzer1@faq.de",
  password: "123456",
  password_confirmation: "123456"
)

Category.create(
  name: "Filme"
)
Category.create(
  name: "Spiele"
)

Category.create(
  name: "Auto"
)

Category.create(
  name: "Computer"
)

Category.create(
  name: "Freizeit"
)

Category.create(
  name: "Handy"
)

Category.create(
  name: "Medizin"
)

Category.create(
  name: "Sport"
)

Category.create(
  name: "Gesundheit"
)

Category.create(
  name: "Ernährung"
)

Category.create(
  name: "Beruf"
)

Category.create(
  name: "Finanzen"
)
Category.create(
  name: "Studium"
)

Category.create(
  name: "Musik"
)

Category.create(
  name: "Chemie"
)

Category.create(
  name: "Philosophie"
)

Category.create(
  name: "Physik"
)

Category.create(
  name: "Mathematik"
)

Category.create(
  name: "Informatik"
)

Category.create(
  name: "Biologie"
)

Category.create(
  name: "Deutsch"
)

Category.create(
  name: "Hauhalt"
)


Question.create(
  topic: "Wie putze ich",
  text: "Wie putz man?",
  user: @admin,
  answered: false
)
Question.create(
  topic: "Wozu dienen Computer",
  text: "Meine Frage an die Community ist, wie man Comupter sinnvoll nutzen kann?",
  user: @admin,
  answered: false
)
Question.create(
  topic: "Gute Steaks",
  text: "Wie bereitet man richtig gute Steaks zu?",
  user: @admin,
  answered: false
)

Answer.create(text: "Man putzt so nicht",
                question_id: 1,
                user: @admin
              )
Answer.create(text: "Doch man putzt so",
                question_id: 1, answer_id: 1,
                user: @admin
              )
Answer.create(text: "Nein macht man nicht",
                question_id: 1, answer_id: 2,
                user: @admin
              )
Answer.create(text: "Gute Steaks brauchen 4 min auf jeder seite",
                question_id: 3,
                user: @admin
              )


QuestionCategorie.create(
  question_id: 1,
  category_id: 1
)
QuestionCategorie.create(
  question_id: 2,
  category_id: 1
)
QuestionCategorie.create(
  question_id: 3,
  category_id: 1
)
QuestionCategorie.create(
  question_id: 1,
  category_id: 2
)
QuestionCategorie.create(
  question_id: 2,
  category_id: 2
)
