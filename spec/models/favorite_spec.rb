require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:category)}
  it {should validate_presence_of(:url)}
  it {should validate_presence_of(:phone)}
end
