# frozen_string_literal: true

# rubocop:disable Metrics/LineLength
posts = [
  {
    title: 'Welcome!',
    description: 'Hi! This is JCC bot running with GraphQL! My master made me.. Nice to meet you, visitor!'
  },
  {
    title: 'Update for 2.4.x',
    description: 'Sorry for sudden changes. I want to update this with newer & fresh codes, my Apologies'
  }
]
# rubocop:enable Metrics/LineLength

puts 'Creating welcome message, etc...'
posts.each do |post|
  p = Post.new(title: post[:title], description: post[:description])
  skip unless p.save!
end

## Final

puts 'Seed done...'
