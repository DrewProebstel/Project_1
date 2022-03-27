require 'rails_helper'

RSpec.describe 'the dropzone show page' do
  it 'displays the dropzone name' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Moab", name: "Skydive Moab")
    skydiver = dropzone.skydivers.create(wingsuit: false, jumps: 40, first_name: "Drew", last_name: "Proebstel")
    visit "/dropzones/#{dropzone.id}"
    save_and_open_page
    expect(page).to have_content(dropzone.name)
  end

end
