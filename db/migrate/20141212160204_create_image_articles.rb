class CreateImageArticles < ActiveRecord::Migration
  def change
    create_table :image_articles do |t|
      t.references :articles, index: true
      t.references :images, index: true

      t.timestamps
    end
  end
end
