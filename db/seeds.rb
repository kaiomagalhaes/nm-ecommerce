# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }])
#   Character.create(name: 'Luke', movie: movies.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
