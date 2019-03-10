# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seeds = %w[user]
seeds.each do |s|
  # rubocop:disable Rails/Output
  puts "#" * 80
  puts "Table: #{s.pluralize.upcase}"
  # rubocop:enable Rails/Output
  require_relative "seeds/models/#{s}.rb"
end
