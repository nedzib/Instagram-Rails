class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:username]
  validates :name, presence: true
  has_one_attached :avatar
  # validates :phone, numericality: { only_integer: true }, :length => { :minimum => 7, :maximum => 10 }
  validates :username, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A\S+@.+\.\S+\z/
end
