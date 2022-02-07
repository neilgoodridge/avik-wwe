class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
      t.string :title
      t.text :description
      t.string :image
      t.timestamps
    end
  end
end
