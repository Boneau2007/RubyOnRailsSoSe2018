# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  username: "Admin",
  role: "admin",
  email: "admin@faq.de",
  password: "123456",
  password_confirmation: "123456"
)
User.create(
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
  answered: false
)
Question.create(
  topic: "Wozu dienen Computer",
  text: "Meine Frage an die Community ist, wie man Comupter sinnvoll nutzen kann?",
  answered: false
)
Question.create(
  topic: "Gute Steaks",
  text: "Wie bereitet man richtig gute Steaks zu?",
  answered: false
)
QuestionCategorie.create(
  question_id: 1,
  category_id: 1
)

Answer.create(text: "Man putzt so nicht", question_id: 1)
Answer.create(text: "Doch man putzt so", question_id: 1, answer_id: 1)
Answer.create(text: "Nein macht man nicht", question_id: 1, answer_id: 2)
Answer.create(text: "Gute Steaks brauchen 4 min auf jeder seite", question_id: 3)
