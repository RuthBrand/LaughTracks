RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
    describe 'associations' do
      it 'should belong to a comedian' do
        association = Special.reflect_on_association(:comedian)
        expect(association.macro).to eq :belongs_to
      end
    end
  end
end


#write association test - expect to belong to a comedian
