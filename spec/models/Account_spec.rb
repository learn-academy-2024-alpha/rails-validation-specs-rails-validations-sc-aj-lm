require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a user_name' do
    Louie = Account.create(
      email: 'louiem@yahoo.com',
      password:'drowssap1'
      )
      expect(Louie.errors[:user_name]).to_not be_empty
  end
  it 'is not valid without a email' do
    Louie = Account.create(
      user_name:'lmoreno94',
      password:'drowssap1'
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
  it 'must include at least one number in the password' do
    louie = Account.new(password: 'drowssap1') # This password does not include a number
    louie.validate # Manually trigger the validation
    expect(louie.errors[:password]).to include("must include at least one number")
  end
  # it 'must include one number' do
  #   Louie = Account.new(
  #     password:'drowssap'
  #   )
  #   expect(Louie.errors[:password]).to_be t
  # end
end

