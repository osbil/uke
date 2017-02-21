class AddIsSoldToProduct < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :is_sold, :boolean, default: true
  end
end
