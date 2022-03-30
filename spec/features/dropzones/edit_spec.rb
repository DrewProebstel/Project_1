require 'rails_helper'

RSpec.describe 'the dropzone edit' do
  it 'links to edit page' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    visit '/dropzones'
    click_link "Edit #{dropzone.name}"

    expect(current_path).to eq("/dropzones/#{dropzone.id}/edit")
  end

  it 'can edit the dropzone' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    visit "/dropzones/#{dropzone.id}/edit"
    fill_in 'name', with: "Mile-High Skydive"
    click_button 'Update Dropzone'

    expect(current_path).to eq("/dropzones")
    expect(page).to have_content('Mile-High Skydive')
    expect(page).to_not have_content('Skydive Kapowsin')
  end
end
