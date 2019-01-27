require 'spec_helper'

RSpec.describe do
  describe "seeing basic comedian information on /comedians" do
       it "displays comedians baseic information" do
       visit '/comedians'

       @comedian = Comedian.create(name: "George Carlin", age: 72, city: "Houston")

       expect(page).to have_content("George Carlin")
       expect(page).to have_content(@comedian.age)
       expect(page).to have_content(@comedian.city)
    end
  end
end
