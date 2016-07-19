# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Review.create( rating: 5 )
Review.create( rating: 7 )
Review.create( rating: 2 )
Review.create( rating: 6 )

Piet = User.create( email: 'piet@ex.com', password: '11112222' )
Santa = User.create( email: 'santa@ex.com', password: '11112222' )
