class AddImageToScene < ActiveRecord::Migration[6.0]
  def change
    add_column :scenes, :image, :string
  end
end
