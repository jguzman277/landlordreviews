class Landlord < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password_confirmation, presence: true, on: :create
  validates :state, :country, :zip_code, presence: true

  belongs_to :state
  belongs_to :country
  has_many :properties

  def full_name
    "#{first_name} #{last_name}"
  end
end
