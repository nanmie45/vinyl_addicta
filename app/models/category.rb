class Category < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }, presence: true
  has_many :products


  def products
    @product = Product.where(category_id: self.id)

  end
end
