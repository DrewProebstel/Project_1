require 'rails_helper'

RSpec.describe 'the dropzone show page' do
  it 'displays the dropzone name' do
    dropzone = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    skydiver = dropzone.skydivers.create(wingsuit: false, jumps: 40, first_name: "Drew", last_name: "Proebstel")
    visit "/dropzones/#{dropzone.id}"
    expect(page).to have_content(dropzone.name)
  end

end
