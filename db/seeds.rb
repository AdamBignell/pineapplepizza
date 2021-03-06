# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include Devise

u = User.create(email: 'admin@dta.ca', username: 'admin', userscore: 500, team_id: 2, password: 'adminpass', admin: true)
u.skip_confirmation!
u.save!

u2 = User.create(email: 'abignell@sfu.ca', username: 'malign_blade', userscore: 0, team_id: 2, password: 'gandalf18', admin: true)
u2.skip_confirmation!
u2.save!

u3 = User.create(email: 'tommyp@gravity.net', username: 'TommyP', userscore: -500, team_id: 2, password: 'slothrop', admin: true)
u3.skip_confirmation!
u3.save!

u4 = User.create(email: 'haroldg@sfu.ca', username: 'OldHarold', userscore: 0, team_id: 1, password: 'letmein', admin: false)
u4.skip_confirmation!
u4.save!

u5 = User.create(email: 'sk8rsteve@fakemail.com', username: 'Sk8rSteve', userscore: 0, team_id: 1, password: 'kickflip', admin: false)
u5.skip_confirmation!
u5.save!

u6 = User.create(email: 'rosanna@fleur.com', username: 'RoseyGirl', userscore: 0, team_id: 1, password: 'thorns666', admin: false)
u6.skip_confirmation!
u6.save!

c = Challenge.create(name: "Film a mythical beast!", description: 'Film an animal that nobody has ever filmed before!')
ui = UsChalInteraction.create(interaction: "created")
c.us_chal_interactions << ui
u2.us_chal_interactions << ui
c.save!

c2 = Challenge.create(name: "Mannequin Challenge", description: "Film your squad freezing while doing something typically very kinetic while listening to the chorus to the hit track 'Black Beatles' by Rae Sremmurd.")
ui2 = UsChalInteraction.create(interaction: "created")
c2.us_chal_interactions << ui2
u5.us_chal_interactions << ui2
c2.save!

t1 = Team.create( id:1, name: "Lightning", description: "We're fast and furious like lightning bolts!")
t2 = Team.create( id:2, name: "Darkness", description: "We strike from the shadOOo00ooOo0o0ows!")

u6.team = t1
u5.team = t1
u4.team = t1

u3.team = t2
u2.team = t2
u.team = t2