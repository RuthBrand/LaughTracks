require 'spec_helper'

RSpec.describe do
  describe "seeing basic comedian information on /comedians" do
       it "displays comedians basic information" do

       @comedian = Comedian.create(name: "George Carlin", age: 72, city: "Houston")
  
       visit '/comedians'

       expect(page).to have_content("George Carlin")
       expect(page).to have_content(72)
       expect(page).to have_content("Houston")
    end
  end
end
