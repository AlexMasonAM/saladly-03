class Ingredient
  include Mongoid::Document
  field :name, type: String
  field :quantity, type: Float
  field :units, type: String
  field :price_per_unit, type: Float
  mount_uploader :photo, MyFirstUploader

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :quantity, presence: true
  validates :units, presence: true
  validates :price_per_unit, presence: true
end
