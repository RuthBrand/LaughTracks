require 'spec_helper'
require '/comedian.rb'

RSpec.describe do
  describe "seeing basic comedian information on /comedians" do
       it "displays comedians baseic information" do
       visit '/comedians'

       @comedian = Comedian.create("George Carlin", 72, "Houston")

       expect(page).to have_content(@comedian.name)
       expect(page).to have_content(@comedian.age)
       expect(page).to have_content(@comedian.city)
    end
  end
end
