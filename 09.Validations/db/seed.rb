require './models/recipe'
require './models/user'

Recipe.delete_all
User.delete_all

puts User.create(name: nil).valid? == false
puts User.create(name: 'jean').valid? == false
puts User.create(name: 'jean', email: "jean@gmail.com").valid? == true
puts User.create(name: 'patrick', email: "@patrick@gmail.com").valid? == false
puts User.create(name: 'patrick', email: "jean@gmail.com").valid? == false
puts User.create(name: 'patrick', email: "patrick@gmail.com").valid? == true
puts Recipe.create(name: 'Gateau', description: 'hello', difficulty: 7, user_id: 7).valid? == false
puts Recipe.create(name: 'Gateau', description: 'hello', difficulty: 3, user_id: 7).valid? == true