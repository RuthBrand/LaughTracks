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
       expect(page).to have_css('img[src="https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg"]')
       expect(page).to have_css('img[src="https://m.media-amazon.com/images/M/MV5BMTU0NjA0ODk1Ml5BMl5BanBnXkFtZTcwNTU4OTAwMg@@._V1_UY268_CR5,0,182,268_AL_.jpg"]')
     end
   end

   it 'i should only see comedians that match certain parameters' do
     comedian = Comedian.create(name: "Lord Varys", age: 45, city: "Kings Landing")
     comedian_two = Comedian.create(name: "Tyrion Lannister", age: 34, city: "The Vale")

     visit `/comedians?age=34`

     expect(page).to have_content("Tyrion Lannister")
     expect(page).to_not have_content("Lord Varys")
    end
  end

end

#
# As a visitor
# When I visit `/comedians?age=34`

#ok so fifrst off i otta make a controller that says go to a page
#then on that pgge filter shit and whatever
#at least i think so 
# Then I see the list of comedians on the page only shows
# comedians who match the age criteria.
#
# - All other information on the page is still expected to be present
# - Testing should check that excluded comedians do not show up.

#test to and to_not
