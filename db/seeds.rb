require File.expand_path('../config/environment', __FILE__)

#put comedian_one = Comedian.create("Louis Ck"...)

louis = Comedian.create(name: "Louis", age: 20, city: "Portland")

# we will need comedian id in specials table when i make one
#how do we give a comedian a special

louis.specials.create(name: "Hilarious", run_time: 60, image_url: "https://m.media-amazon.com/images/M/MV5BNTQyODYyNzcxN15BMl5BanBnXkFtZTgwOTA3MzcwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
louis.specials.create(name: "Chewed Up", run_time: 75, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg")
