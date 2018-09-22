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

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      User.where(['user_name LIKE ?', "%#{search}%"])
    else
      User.all #全て表示。
    end
  end

end
