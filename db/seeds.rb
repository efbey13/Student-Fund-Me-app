# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }},

Need.create(
  [
    {:title => "Textbooks"},
    {:title => "Tolietries"},
    {:title => "Supplies"},
    {:title => "Meal Plan"},
    {:title => "Tuition"},
    {:title => "Dormitory"},
    {:title => "Health Plan"}
  ]
)
Challenges.create(
  [
    {name: "Increase GPA"},
    {name: "Dean's List"}
    {name: "Community Service"}
  ]
)
