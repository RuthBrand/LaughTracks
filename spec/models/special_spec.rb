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
  end
end
