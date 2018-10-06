require File.expand_path('../../config/environment', __FILE__)

louis = Comedian.create(name: "Louis C.K.", age: 41, city: "Washington, DC")

louis.specials.create(name: "Hilarious", run_time: 60, image_url: "https://m.media-amazon.com/images/M/MV5BNTQyODYyNzcxN15BMl5BanBnXkFtZTgwOTA3MzcwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
louis.specials.create(name: "Chewed Up", run_time: 75, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg")

victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")

victor.specials.create(name: "The Best of Victor Borge, Act One and Two", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc3MzQxMTcwMF5BMl5BanBnXkFtZTcwODM5ODUxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
victor.specials.create(name: "The King of Comedy", run_time: 110, image_url: "https://m.media-amazon.com/images/M/MV5BNTAyNDM0OGMtMmQ5OS00OGJiLTljMDUtY2Y1OTFlYmM2ZTk2XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg")

robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")

robin.specials.create(name: "Weapons of Self Destruction", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
robin.specials.create(name: "Robin Williams Live at the Met", run_time: 65, image_url: "https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
robin.specials.create(name: "The Aristocrats", run_time: 89, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ0NmI1N2EtYzdkYy00NzFmLThlYTMtOWViYjQyOGQ2OWVlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg")
