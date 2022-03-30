require 'rails_helper'

RSpec.describe 'The dropzone skydivers creation' do
  it 'links to the new page from the index' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Moab", name: "Skydive Moab")
    @skydiver1 = dropzone.skydivers.create(wingsuit: false, jumps: 40, first_name: "Drew", last_name: "Proebstel")
    @skydiver2 = dropzone.skydivers.create(wingsuit: true, jumps: 2112, first_name: "Geddy", last_name: "Lee")
    visit "/dropzones/#{dropzone.id}/skydivers"

    click_link('Create Skydiver')
    expect(current_path).to eq("/dropzones/#{dropzone.id}/skydivers/new")
  end

  it 'can create a new skydiver for a dropzone' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Moab", name: "Skydive Moab")
    @skydiver1 = dropzone.skydivers.create(wingsuit: false, jumps: 40, first_name: "Drew", last_name: "Proebstel")
    @skydiver2 = dropzone.skydivers.create(wingsuit: true, jumps: 2112, first_name: "Geddy", last_name: "Lee")

    visit "/dropzones/#{dropzone.id}/skydivers/new"
    fill_in('Wingsuit', with: 'true')
    fill_in('Jumps', with: '45')
    fill_in('First name', with: 'Mike')
    fill_in('Last name', with: 'Dao')
    click_button('Create Skydiver')



    expect(page).to have_content(true)
    expect(page).to have_content(45)
    expect(page).to have_content('Mike')
    expect(page).to have_content('Dao')
  end
end
