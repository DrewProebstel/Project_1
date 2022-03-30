require 'rails_helper'

RSpec.describe 'The dropzone creation' do
  it 'links to the new page from the dropzone index' do
    visit '/dropzones'

    click_link('New Dropzone')
    expect(current_path).to eq('/dropzones/new')
  end

  it 'can create a new dropzone' do
    visit '/dropzones/new'

    fill_in('windtunnel', with: 'true')
    fill_in('employees', with: '45')
    fill_in('city', with: 'Perris')
    fill_in('name', with: 'Skydive Perris')
    click_button('Create Dropzone')
    new_dropzone_id = Dropzone.last.id
    expect(current_path).to eq("/dropzones")
    expect(page).to have_content('Skydive Perris')

  end
end
