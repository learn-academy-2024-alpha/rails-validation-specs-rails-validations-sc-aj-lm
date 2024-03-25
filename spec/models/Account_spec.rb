require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a user_name' do
    Louie = Account.create(
      email: 'louiem@yahoo.com',
      password:'drowssap'
      )
      expect(Louie.errors[:user_name]).to_not be_empty
  end
  it 'is not valid without a email' do
    Louie = Account.create(
      user_name:'lmoreno94',
      password:'drowssap'
      )
      expect(Louie.errors[:email]).to_not be_empty
  end
  it 'is not valid without a password' do
    Louie = Account.create(
      user_name:'lmoreno94',
      email:'louiem@yahoo.com'
      )
      expect(Louie.errors[:password]).to_not be_empty
  end
end
