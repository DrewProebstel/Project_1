require 'rails_helper'

RSpec.describe 'the skydive edit' do
  it 'links to edit page' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    skydiver1 = dropzone.skydivers.create(wingsuit: true, jumps: 40, first_name: "Drew", last_name: "Proebstel")
    visit '/skydivers'
    click_link("Edit Skydiver", match: :first)

    expect(current_path).to eq("/skydivers/#{skydiver1.id}/edit")
  end

  it 'can edit the skydiver' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    skydiver1 = dropzone.skydivers.create(wingsuit: false, jumps: 40, first_name: "Drew", last_name: "Proebstel")

    visit "/skydivers/#{skydiver1.id}/edit"
    fill_in 'First name', with: "Ringo"
    fill_in 'Last name', with: "Star"
    click_button 'Edit Skydiver'

    expect(page).to have_content('Ringo')
    expect(page).to have_content('Star')
    expect(page).to_not have_content('Drew')
  end
end
