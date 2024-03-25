require 'rails_helper'

RSpec.describe Address, type: :model do
belongs_to :Account, optional: true
end
