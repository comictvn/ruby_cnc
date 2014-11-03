class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :content
      t.integer :parent, default: 0
      t.string :active

      t.timestamps
    end
  end
end
