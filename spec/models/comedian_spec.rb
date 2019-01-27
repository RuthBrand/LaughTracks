RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      xit 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      xit 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'attributes' do
    it 'should have a name attribute' do
      @comedian = Comedian.create("John", 23, "Ohio")

      "John".should equal(@comedian.name)
    end
  end
end
