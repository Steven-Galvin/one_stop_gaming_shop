class Product < ApplicationRecord
  attr_accessor :articles
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "no_image.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_many :reviews
  has_many :order_items
  validates :name, :cost, :game_type, :genre, :description, presence: true
end
