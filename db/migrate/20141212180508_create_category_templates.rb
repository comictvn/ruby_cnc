class CreateCategoryTemplates < ActiveRecord::Migration
  def change
    create_table :category_templates do |t|
      t.string :name
      t.text :content
      t.integer :parent
      t.integer :active

      t.timestamps
    end
  end
end
