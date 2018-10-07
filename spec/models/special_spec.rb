RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end

      it 'should beongs_to one comedian' do
        association = Special.reflect_on_association(:comedian)
        expect(association.macro).to eq :belongs_to
      end
    end

    describe 'Statistics' do
      describe 'Specials statistics' do
        it 'gives average run time of all specials' do

          robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
          victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")

          robin.specials.create(name: "Weapons of Self Destruction", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
          robin.specials.create(name: "Robin Williams Live at the Met", run_time: 65, image_url: "https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
          robin.specials.create(name: "The Aristocrats", run_time: 89, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ0NmI1N2EtYzdkYy00NzFmLThlYTMtOWViYjQyOGQ2OWVlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg")

          victor.specials.create(name: "The Best of Victor Borge, Act One and Two", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc3MzQxMTcwMF5BMl5BanBnXkFtZTcwODM5ODUxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
          victor.specials.create(name: "The King of Comedy", run_time: 110, image_url: "https://m.media-amazon.com/images/M/MV5BNTAyNDM0OGMtMmQ5OS00OGJiLTljMDUtY2Y1OTFlYmM2ZTk2XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg")

          average_run_time = Special.average_run_time
          expected_result = 88.8

          expect(average_run_time).to eq (expected_result)
        end
      end
    end

 end
end
