Task.create(content: 'test', status: 'test_ttt')

(1..10).each do |number|
  Task.create!(content:'t_content'+number.to_s,status:'t_status'+number.to_s)
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
