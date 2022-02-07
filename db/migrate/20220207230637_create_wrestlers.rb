class CreateWrestlers < ActiveRecord::Migration[6.0]
  def change
    create_table :wrestlers do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
