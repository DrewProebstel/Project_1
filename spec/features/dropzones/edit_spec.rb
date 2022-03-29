require 'rails_helper'

RSpec.describe 'the dropzone edit' do
  it 'links to edit page' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    visit '/dropzones'
    click_link "Edit #{dropzone.name}"

    expect(current_path).to eq("/dropzones/#{dropzone.id}")
  end

  it 'can edit the dropzone' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    visit "/dropzones/#{artist.id}/edit"
    fill_in 'employees', with: "26"
    click_button 'Update Skydive Kapowsin'

    expect(current_path).to eq("/dropzones")
    expect(page).to have_content('26')
  end
end
