# As a visitor
# When I visit the Parent Index page
# Then I see a link to create a new Parent record, "New Parent"
# When I click this link
# Then I am taken to '/parents/new' where I  see a form for a new parent record
# When I fill out the form with a new parent's attributes:
# And I click the button "Create Parent" to submit the form
# Then a `POST` request is sent to the '/parents' route,
# a new parent record is created,
# and I am redirected to the Parent Index page where I see the new Parent displayed.

require 'rails_helper'

RSpec.describe 'The artist creation' do
  it 'links to the new page from the artist index' do
    visit '/dropzones'

    click_link('New Dropzone')
    expect(current_path).to eq('/dropzones/new')
  end

  it 'can create a new dropzone' do
    visit '/dropzones/new'

    fill_in('windtunnel', with: 'true')
    fill_in('employees', with: '45')
    fill_in('city', with: 'Perris')
    fill_in('name', with: 'Skydive Perris')
    click_button('Create Dropzone')

    new_dropzone_id = Dropzone.last.id
    expect(current_path).to eq("/dropzones/#{new_dropzone_id}")
    expect(page).to have_content(true)
    expect(page).to have_content(45)
    expect(page).to have_content('Perris')
    expect(page).to have_content('Skydive Perris')

  end
end