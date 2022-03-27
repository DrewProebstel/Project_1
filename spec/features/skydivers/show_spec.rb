require 'rails_helper'

RSpec.describe 'the dropzone show page' do
  it 'displays the dropzone name' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Moab", name: "Skydive Moab")
    skydiver1 = dropzone.skydivers.create(wingsuit: false, jumps: 40, first_name: "Drew", last_name: "Proebstel")
    skydiver2 = dropzone.skydivers.create(wingsuit: true, jumps: 4487, first_name: "Geddy", last_name: "Lee")
    visit "/skydivers"
    expect(page).to have_content(skydiver1.first_name)
    expect(page).to have_content(skydiver1.last_name)
    expect(page).to have_content(skydiver1.wingsuit)
    expect(page).to have_content(skydiver1.jumps)
    expect(page).to have_content(skydiver2.first_name)
    expect(page).to have_content(skydiver2.last_name)
    expect(page).to have_content(skydiver2.wingsuit)
    expect(page).to have_content(skydiver2.jumps)
  end

end
