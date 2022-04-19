class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true
  validates :phone, numericality: { only_integer: true }, :length => { :minimum => 7, :maximum => 10 }
  validates :username, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A\S+@.+\.\S+\z/
end
