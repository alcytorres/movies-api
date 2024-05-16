# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


movie = Movie.new(title: "Inception", director: "Christopher Nolan", release_year: 2010, imdb_score: 8.8)
movie.save

movie = Movie.new(title: "Heat", director: "Michael Mann", release_year: 1995, imdb_score: 8.2)
movie.save

movie = Movie.new(title: "Lawrence of Arabia", director: "David Lean", release_year: 1962, imdb_score: 8.3)
movie.save

movie = Movie.new(title: "Breakfast at Tiffany's", director: "Blake Edwards", release_year: 1961, imdb_score: 7.6)
movie.save

movie = Movie.new(title: "Once Upon a Time in the West", director: "Sergio Leone", release_year: 1968, imdb_score: 8.5)
movie.save

movie = Movie.new(title: "Beverly Hills Cop", director: "Martin Brest", release_year: 1984, imdb_score: 7.3)
