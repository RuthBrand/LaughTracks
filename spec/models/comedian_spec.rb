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
      it 'shows average age of all comedians' do
        robin = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
        victor = Comedian.create(name: "Victor Borge", age: 91, city: "Copenhagen, Denmark")

        average = Comedian.average_age
        expected_result = 77

        expect(average).to eq (expected_result)
      end
    end
  end
end
