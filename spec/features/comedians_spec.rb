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

  describe "seeing information on comedian's specials on /comedians" do
    it "displays the comedian's specials" do

      @comedian = Comedian.create(name: "George Carlin", age: 72, city: "Houston")

      @special_one = Special.create(name: "You Are All Diseased", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTIxMjA3OTYwNF5BMl5BanBnXkFtZTcwMTU5OTcxMQ@@._V1_UY268_CR6,0,182,268_AL_.jpg")
      @special_two = Special.create(name: "Its Bad For Ya", run_time: 75, image_url: "https://upload.wikimedia.org/wikipedia/en/7/78/It%27s_Bad_for_Ya_%28George_Carlin_album_-_cover_art%29.jpg")
      @special_three = Special.create(name: "Complaints and Grievances", run_time: 110, image_url: "https://upload.wikimedia.org/wikipedia/en/5/50/GC_Complaints_And_Grievances.png")

      visit '/comedians'

      expect(page).to have_content("You Are All Diseased")
      expect(page).to have_content("Its Bad For Ya")
      expect(page).to have_content("Complaints and Grievances")
    end
  end
end
