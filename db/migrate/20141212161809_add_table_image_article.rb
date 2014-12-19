class AddTableImageArticle < ActiveRecord::Migration
  def change
  	create_table :image_articles do |t|
      t.references :article, index: true
      t.references :image, index: true

      t.timestamps
    end
  end
end
