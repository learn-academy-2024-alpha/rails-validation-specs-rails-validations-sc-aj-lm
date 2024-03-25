require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without a street_number' do
    Little = Account.create(
      street_name:'elm st',
      city: 'omaha',
      state:'nebraska',
      zip: '12'
      )
      expect(Little.errors[:street_number]).to_not be_empty
  end
  it 'is not valid without a street_name' do
    Little = Account.create(
      street_number:'999',
      city: 'omaha',
      state:'nebraska',
      zip: '12'
      )
      expect(Little.errors[:street_name]).to_not be_empty
  end
  it 'is not valid without a city' do
    Little = Account.create(
      street_number:'999',
      street_name:'elm st',
      state:'nebraska',
      zip: '12'
      )
      expect(Little.errors[:state]).to_not be_empty
  end
  it 'is not valid without a city' do
    Little = Account.create(
      street_number:'999',
      street_name:'elm st',
      city:'omaha',
      zip: '12'
      )
      expect(Little.errors[:state]).to_not be_empty
  end
  it 'is not valid without a zip' do
    Little = Account.create(
      street_number:'999',
      street_name:'elm st',
      state:'nebraska',
      city: 'omaha'
      )
      expect(Little.errors[:zip]).to_not be_empty
  end
  
end
