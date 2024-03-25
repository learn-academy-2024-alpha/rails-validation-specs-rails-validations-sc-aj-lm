class Account < ApplicationRecord
    validates :user_name, :email, :password, presence: true
    validates :user_name, length: { minimum: 5 }
    validates :password, uniqueness: { case_sensitive: true }
    validates :user_name, uniqueness: true 
    validates :password, length: { minimum: 6,  }
    validates :password, presence: true, format: { with: /\d/, message: "must include at least one number" }
end
