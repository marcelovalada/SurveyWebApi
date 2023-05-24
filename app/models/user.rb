class User < ApplicationRecord
  acts_as_token_authenticatable

  validates_inclusion_of :admin, in: [true, false]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
