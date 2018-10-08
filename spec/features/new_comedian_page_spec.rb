RSpec.describe 'as a visitor' do
  describe 'buttons i see' do
  it 'i see buttons to add comedians' do

    visit '/comedians/new'


      expect(page).to have_button('create')
      expect(page).to have_field('name')
      expect(page).to have_field('age')
      expect(page).to have_field('city')
    end
  end

  it 'posts to the comedian homepage' do
    visit 'comedians/new'

    fill_in('name', with:'Ruth Brand')
    fill_in('age', with:'30')
    fill_in('city', with: 'Denver, CO')
    find_button('create').click

    expect(page).to have_current_path('/comedians')
    expect(page).to have_content "Ruth Brand"
    expect(page).to have_content "30"
    expect(page).to have_content "Denver, CO"
  end
end


#how to make it such that if there isn't a thing entered we can take away the bullet points
