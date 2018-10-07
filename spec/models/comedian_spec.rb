RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should has_many specials' do
        association = Comedian.reflect_on_association(:specials)
        expect(association.macro).to eq :has_many
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'statistics' do
    describe 'comedian statistics' do
      it 'calculates average age of all comedians' do
        robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
        victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")

        average = Comedian.average_age
        expected_result = 77

        expect(average).to eq (expected_result)
      end

      it 'makes it so that each city only shows once in statistics bar' do
        robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
        victor = Comedian.create(name: "Victor Borge", age: 91, city: "Chicago, IL")

        cities = Comedian.unique_cities.join

        expected_result= "Chicago, IL"

        expect(cities). to eq (expected_result)
    end
  end

    #  it 'should show me a count of each comedians tv specials' do
    #    robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
    #    victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")
    #
    #    robin.specials.create(name: "Weapons of Self Destruction", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    #    robin.specials.create(name: "Robin Williams Live at the Met", run_time: 65, image_url: "https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
    #    robin.specials.create(name: "The Aristocrats", run_time: 89, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ0NmI1N2EtYzdkYy00NzFmLThlYTMtOWViYjQyOGQ2OWVlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg")
    #
    #    victor.specials.create(name: "The Best of Victor Borge, Act One and Two", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc3MzQxMTcwMF5BMl5BanBnXkFtZTcwODM5ODUxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    #    victor.specials.create(name: "The King of Comedy", run_time: 110, image_url: "https://m.media-amazon.com/images/M/MV5BNTAyNDM0OGMtMmQ5OS00OGJiLTljMDUtY2Y1OTFlYmM2ZTk2XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg")
    #
    #   robins_specials = robin.total_specials
    #   victors_specials = victor.total_specials
    #
    #   expect(robins_specials). to eq(3)
    #   expect(victors_specials). to eq(2)
    # end
  end
end

  # describe 'parameters' do
  #   describe 'comedian paramaters' do
  #     it 'shows only comedians whose age matches given params'
  #     robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
  #     victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")
  #
