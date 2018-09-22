class User < ApplicationRecord
  has_many :carts
  has_many :products, dependent: :destroy

  validates :user_name, uniqueness: { case_sensitive: false }, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def products
    return Product.where(user_id: self.id)
  end
end
