require 'rails_helper'

RSpec.describe 'the dropzone delete function' do
  it 'deletes dropzone' do
    dropzone1 = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Kapowsin")
    dropzone2 = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Oregon")
    dropzone3 = Dropzone.create(windtunnel: false, employees: 12, city: "Shelton", name: "Skydive Moab")
    visit '/dropzones'
    click_link("Delete Dropzone", match: :first)

    expect(page).to have_content("Skydive Oregon")
    expect(page).to have_content("Skydive Kapowsin")
    expect(page).to_not have_content("Skydive Moab")
  end
end
