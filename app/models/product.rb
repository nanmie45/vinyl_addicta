class Product < ApplicationRecord
  belongs_to :user, optional: true
      mount_uploader :image, ImageUploader


      validates :artist, presence: true
      validates :title, presence: true
      validates :image, presence: true
      validates :user_id, presence: true
      validates :price, presence: true, numericality: { only_integer: true }
end
