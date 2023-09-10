# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Activity.create!(
	configuration_url: '',
	configuration_tag: '',
	execution_url: '/assets/js/activities/front_and_back.js',
	execution_tag: 'lg-front-and-back',
	name: 'Front and Back'
);