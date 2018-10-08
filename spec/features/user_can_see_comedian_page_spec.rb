RSpec.describe 'as a visitor' do
  describe 'when i visit the comedian page' do
    it 'i should see the comedians age' do
      comedian = Comedian.create(name: "Jon Snow", age: 20, city: "The Wall")
      visit '/comedians'

      within('#comedian_stats') do
        expect(page).to have_content(comedian.age)
      end
    end

    it 'i should see the comedians name' do
      comedian = Comedian.create(name: "Lord Varys", age: 45, city: "Kings Landing")

      visit '/comedians'

      within('#comedian_stats') do
       expect(page).to have_content(comedian.name)
      end
    end

    it 'i should see all the comedians specials names' do
     comedian = Comedian.create(name: "Lord Varys", age: 45, city: "Kings Landing")
     special = Special.create(name: "The Rise of Cersei Lannister", run_time: 100, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 1)
     special_two = Special.create(name: "Tywin's Humour 101", run_time: 2, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 1)

     visit '/comedians'

     within('#comedian_stats') do
       expect(page).to have_content("The Rise of Cersei Lannister")
       expect(page).to have_content("Tywin's Humour 101")
     end
   end

   it 'i should see each specials run time length' do
     comedian = Comedian.create(name: "Lord Varys", age: 45, city: "Kings Landing")
     special = Special.create(name: "The Rise of Cersei Lannister", run_time: 100, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 1)
     special_two = Special.create(name: "Tywin's Humour 101", run_time: 2, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 1)

     visit '/comedians'

     within('#comedian_stats') do
       expect(page).to have_content(2)
       expect(page).to have_content(100)
     end
   end

   it 'i should see the total amount of specials for each comedian' do

     robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
     victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")


     robin.specials.create(name: "Weapons of Self Destruction", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
     robin.specials.create(name: "Robin Williams Live at the Met", run_time: 65, image_url: "https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
     robin.specials.create(name: "The Aristocrats", run_time: 89, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ0NmI1N2EtYzdkYy00NzFmLThlYTMtOWViYjQyOGQ2OWVlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg")

     victor.specials.create(name: "The Best of Victor Borge, Act One and Two", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc3MzQxMTcwMF5BMl5BanBnXkFtZTcwODM5ODUxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
     victor.specials.create(name: "The King of Comedy", run_time: 110, image_url: "https://m.media-amazon.com/images/M/MV5BNTAyNDM0OGMtMmQ5OS00OGJiLTljMDUtY2Y1OTFlYmM2ZTk2XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg")

     visit '/comedians'

     within('#comedian_stats') do
       expect(page).to have_content(3)
       expect(page).to have_content(2)
     end
   end


   it 'i should see a thumbnail image of the specials' do
     comedian = Comedian.create(name: "Lord Varys", age: 45, city: "Kings Landing")
     special = Special.create(name: "The Rise of Cersei Lannister", run_time: 100, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 1)
     special_two = Special.create(name: "Tywin's Humour 101", run_time: 2, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 1)

     visit '/comedians'

     within('#comedian_stats') do
       expect(page).to have_css('img[src="https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg"]')
       expect(page).to have_css('img[src="https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg"]')
     end
   end

   it 'i should only see comedians with a certain age' do
     comedian = Comedian.create(name: "Lord Varys", age: 45, city: "Kings Landing")
     comedian_two = Comedian.create(name: "Tyrion Lannister", age: 36, city: "Kings Landing")

     visit '/comedians?age=36'

     within('#comedian_stats') do
     expect(page).to have_content("Tyrion Lannister")
     expect(page).to_not have_content("Lord Varys")
   end
  end
end
end


  describe 'Statistics' do
    describe 'Overall Statistics' do
  it 'i should see the comedians average age in the statistics bar' do
    comedian = Comedian.create(name: "Lord Varys", age: 45, city: "Kings Landing")
    comedian_two = Comedian.create(name: "Tyrion Lannister", age: 36, city: "Kings Landing")

    visit '/comedians'
    save_and_open_page
    within('#statistics') do
      expect(page).to have_content (40.5)
    end
  end

  it 'i should see the average run time of all the specials in the statistics bar' do
    robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
    victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")


    robin.specials.create(name: "Weapons of Self Destruction", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    robin.specials.create(name: "Robin Williams Live at the Met", run_time: 65, image_url: "https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
    robin.specials.create(name: "The Aristocrats", run_time: 89, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ0NmI1N2EtYzdkYy00NzFmLThlYTMtOWViYjQyOGQ2OWVlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg")

    victor.specials.create(name: "The Best of Victor Borge, Act One and Two", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc3MzQxMTcwMF5BMl5BanBnXkFtZTcwODM5ODUxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    victor.specials.create(name: "The King of Comedy", run_time: 110, image_url: "https://m.media-amazon.com/images/M/MV5BNTAyNDM0OGMtMmQ5OS00OGJiLTljMDUtY2Y1OTFlYmM2ZTk2XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg")

    visit '/comedians'

    within('#statistics') do
      expect(page).to have_content (88.8)
    end
  end

  it 'only shows each city once' do
    robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
    victor = Comedian.create(name: "Victor Borge", age: 91, city: "Chicago, IL")

    visit '/comedians'

    within('#statistics') do
      expect(page).to have_content("Chicago, IL")
    end
  end

  it 'shows the total specials for all comedians' do

    robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
    victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")

    robin.specials.create(name: "Weapons of Self Destruction", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    robin.specials.create(name: "Robin Williams Live at the Met", run_time: 65, image_url: "https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
    robin.specials.create(name: "The Aristocrats", run_time: 89, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ0NmI1N2EtYzdkYy00NzFmLThlYTMtOWViYjQyOGQ2OWVlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg")

    victor.specials.create(name: "The Best of Victor Borge, Act One and Two", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc3MzQxMTcwMF5BMl5BanBnXkFtZTcwODM5ODUxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    victor.specials.create(name: "The King of Comedy", run_time: 110, image_url: "https://m.media-amazon.com/images/M/MV5BNTAyNDM0OGMtMmQ5OS00OGJiLTljMDUtY2Y1OTFlYmM2ZTk2XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg")

    visit '/comedians'

    within('#statistics') do
      expect(page).to have_content(5)
    end
  end

  it 'shows total specials for comedian when selected by parameters' do
    robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
    victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")

    robin.specials.create(name: "Weapons of Self Destruction", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    robin.specials.create(name: "Robin Williams Live at the Met", run_time: 65, image_url: "https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
    robin.specials.create(name: "The Aristocrats", run_time: 89, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ0NmI1N2EtYzdkYy00NzFmLThlYTMtOWViYjQyOGQ2OWVlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg")

    victor.specials.create(name: "The Best of Victor Borge, Act One and Two", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc3MzQxMTcwMF5BMl5BanBnXkFtZTcwODM5ODUxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    victor.specials.create(name: "The King of Comedy", run_time: 110, image_url: "https://m.media-amazon.com/images/M/MV5BNTAyNDM0OGMtMmQ5OS00OGJiLTljMDUtY2Y1OTFlYmM2ZTk2XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg")

    visit '/comedians?age=63'

    within('#statistics') do
      expect(page).to have_content(3)
  end
end

 end
end
