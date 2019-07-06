# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Locale.create([
  {
    name: 'Bad Guys, Inc',
    degree: 1,
    location: "123 fake st",
    citation: "www.google.com",
    contact: "a@b.c",
    connections: 3,
    blurb: "it's a very bad place"
  },
  {
    name: 'We Really Suck',
    degree: 2,
    location: "234 washington lane",
    citation: "www.yahoo.com",
    contact: "foo@baz.bar",
    connections: 1,
    blurb: "they furnish the bad place"
  },
  {
    name: 'Illegally Detaining People',
    degree: 1,
    location: "2200 sesame st",
    citation: "ice.gov",
    contact: "asshole@ice.gov",
    connections: 2
    blurb: "they detain people illegally"
  },
  {
    name: 'Everything We Do Is Wrong',
    degree: 1,
    location: "135 fake st",
    citation: "ice.gov",
    contact: "asshole@ice.gov",
    connections: 1
    blurb: "it's a bad place full of bad people"
  }
])