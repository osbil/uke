class Product < ApplicationRecord

	mount_uploader :image, ImageUploader
	
	def publish!
    self.is_sold = false
    self.save
  end

  def hide!
    self.is_sold = true
    self.save
  end

  

end
