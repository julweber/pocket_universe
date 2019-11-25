require './dependencies'
(Dir["./app/models/*.rb"].sort + Dir["./app/models/**/*.rb"].sort).each do |file|
  require file
end

# binding.pry
puts "-"*50
universe_a = Universe.new
universe_a.summary

puts "-"*50
config = {
  number_of_stars: 1e24,
  solar_systems_with_planets_percentage: 15,
  habitable_zones_percentage: 20,
  life_factor_percentage: 1e-9
}
universe_b = Universe.new config
universe_b.summary


puts "Loaded main.rb"
