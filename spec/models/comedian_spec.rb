RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end

   decribe 'Associations' do
    it 'should have many specials' do
      association = Special.reflect_on_association(:comedian)
      expect(association.macro).to eq :belongs_to
    end
   end
 end
end
