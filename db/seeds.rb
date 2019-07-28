# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Locale.create([
  {
    name: 'Palantir Seattle',
    latitude: 47.598570,
    longitude: -122.333280,
    pretty_address: "Seattle, WA",
    email_address: "info@palantir.com",
    email_suggestion: "As a concerned community member of Palantir Seattle, I am writing to ask that you end your contract with ICE. By continuing to choose money over morals, you are directly profiting over the deaths of poor, desperate people. Please be better humans than that.",
    blurb: "Palantir Tech isn't just named after magical technology that was exploited to do evil; they then made it their mission to do evil themselves. ICE uses their mobile app during raids. Palantir is, effectively, the tech branch of ICE, and records show they made $60 million on FALCON alone. There is an office in Seattle."
  },
  {
    name: 'Palantir Los Angeles',
    latitude: 34.05,
    longitude: -118.244,
    pretty_address: "Los Angeles, California",
    email_address: "info@palantir.com",
    email_suggestion: "As a concerned community member of Palantir Los Angeles, I am writing to ask that you end your contract with ICE. By continuing to choose money over morals, you are directly profiting over the deaths of poor, desperate people. Please be better humans than that.",
    blurb: "Palantir Tech isn't just named after magical technology that was exploited to do evil; they then made it their mission to do evil themselves. ICE uses their mobile app during raids. Palantir is, effectively, the tech branch of ICE, and records show they made $60 million on FALCON alone. There is an office in Los Angeles."
  }
])