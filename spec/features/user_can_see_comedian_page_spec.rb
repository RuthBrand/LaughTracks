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

   it 'i should see a thumbnail image of the specials' do
     comedian = Comedian.create(name: "Lord Varys", age: 45, city: "Kings Landing")
     special = Special.create(name: "The Rise of Cersei Lannister", run_time: 100, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 1)
     special_two = Special.create(name: "Tywin's Humour 101", run_time: 2, image_url: "https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 1)

     visit '/comedians'

     within('#comedian_stats') do
       expect(page).to have_content("https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg")
       expect(page).to have_content("https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg")
     end
   end
  end
end
