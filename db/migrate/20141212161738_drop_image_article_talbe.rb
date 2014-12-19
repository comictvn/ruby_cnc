class DropImageArticleTalbe < ActiveRecord::Migration
  def change
  	drop_table :image_articles
  end
end
