# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Story.create(opening_line: 'Once upon a time...', image: 'https://www.writersedit.com/wp-content/uploads/2016/06/Fantasy-elements_3.jpg', genre: 'fantasy', author: 'Me')

Comment.create(likes: 0, dislikes: 0, funny_rating: 0, scary_rating: 0, story_id: 1, author: 'not sure', text: 'this is a comment')
Comment.create(likes: 0, dislikes: 0, funny_rating: 0, scary_rating: 0, story_id: 2, author: 'not sure', text: 'this is comment no. 2')

