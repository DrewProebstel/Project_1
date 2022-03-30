require 'rails_helper'

RSpec.describe Skydiver, type: :model do
  it {should belong_to :dropzone}
end
