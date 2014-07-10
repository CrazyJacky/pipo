class Pin < ActiveRecord::Base
  belongs_to :board
  extend FriendlyId
  friendly_id :name, use: :slugged
  mount_uploader :image, ImageUploader

  before_save do
    self.slug = name.parameterize
  end

  to_param do
    slug
  end
end
