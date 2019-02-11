# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

done = false

puts 'Creating welcome message...'
message = 'Hi! This is me JCC from GraphQL Server! My master made me.. Nice to meet you, visitor!'
p = Post.new(title: 'Welcome!', description: message)
if p.save
  done = true
end

## Final

if done
  puts 'Seed done...'
end
