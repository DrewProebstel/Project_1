require 'rails_helper'

RSpec.describe 'the skydive delete function' do
  it 'deletes skydivers' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    skydiver1 = dropzone.skydivers.create(wingsuit: true, jumps: 40, first_name: "Neil", last_name: "Peart")
    skydiver2 = dropzone.skydivers.create(wingsuit: true, jumps: 40, first_name: "Geddy", last_name: "Lee")
    skydiver3 = dropzone.skydivers.create(wingsuit: true, jumps: 40, first_name: "Alex", last_name: "Lifeson")
    visit '/skydivers'
    save_and_open_page
    click_link("Delete Skydiver", match: :first)
    save_and_open_page
    expect(page).to have_content("Lifeson")
    expect(page).to have_content("Lee")
    expect(page).to_not have_content("Peart")
  end
end
