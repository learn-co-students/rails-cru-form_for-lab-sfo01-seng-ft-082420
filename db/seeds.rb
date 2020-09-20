# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "David Bowie", bio: "Is there life on Mars?")
Artist.create(name: "Grimes", bio: "X Ash A Twelve")
Artist.create(name: "Bob Dylan", bio: "Don't criticize what you can't understand")

Genre.create(name: "Electropop")
Genre.create(name: "Folk")
Genre.create(name: "Rock")

Song.create(name: "Starman", artist_id: 1, genre_id: 3)
Song.create(name: "Genesis", artist_id: 2, genre_id: 1)
Song.create(name: "Subterranean Homesick Blues", artist_id: 3, genre_id: 2)