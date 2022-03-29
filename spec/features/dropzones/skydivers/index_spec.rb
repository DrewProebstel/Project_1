require 'rails_helper'

RSpec.describe 'the dropzone show page' do
  it 'shows all of the skydivers for a dropzone' do

    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Moab", name: "Skydive Moab")
    @skydiver1 = dropzone.skydivers.create(wingsuit: false, jumps: 40, first_name: "Drew", last_name: "Proebstel")
    @skydiver2 = dropzone.skydivers.create(wingsuit: true, jumps: 2112, first_name: "Geddy", last_name: "Lee")

    visit "/dropzones/#{dropzone.id}/skydivers"

    expect(page).to have_content(@skydiver1.first_name)
    expect(page).to have_content(@skydiver1.last_name)
    expect(page).to have_content(@skydiver1.wingsuit)
    expect(page).to have_content(@skydiver1.jumps)
    expect(page).to have_content(@skydiver2.first_name)
    expect(page).to have_content(@skydiver2.last_name)
    expect(page).to have_content(@skydiver2.wingsuit)
    expect(page).to have_content(@skydiver2.jumps)
  end

  it 'links to each songs show page' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Moab", name: "Skydive Moab")
    @skydiver1 = dropzone.skydivers.create(wingsuit: false, jumps: 40, first_name: "Drew", last_name: "Proebstel")
    @skydiver2 = dropzone.skydivers.create(wingsuit: true, jumps: 2112, first_name: "Geddy", last_name: "Lee")

    visit "/dropzones/#{dropzone.id}/skydivers"
    click_on @skydiver1.first_name

    expect(current_path).to eq("/skydivers/#{@skydiver1.id}")
  end
end
