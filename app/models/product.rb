class Product < ApplicationRecord
	def publish!
    self.is_sold = false
    self.save
  end

  def hide!
    self.is_sold = true
    self.save
  end

  mount_uploader :image, ImageUploader

end
