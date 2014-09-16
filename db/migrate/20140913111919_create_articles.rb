class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :description
      t.text :content
      t.integer :active
      t.references :category, index: true

      t.timestamps
    end
  end
end
