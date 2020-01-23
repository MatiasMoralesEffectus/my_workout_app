class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :exercises     

  validates :first_name, presence: true
  validates :last_name, presence: true
  
  self.per_page = 10

  def full_name 
    [first_name, last_name].join(" ")
  end
end
