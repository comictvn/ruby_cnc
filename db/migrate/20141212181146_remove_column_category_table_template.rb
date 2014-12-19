class RemoveColumnCategoryTableTemplate < ActiveRecord::Migration
  def change
  	remove_column :templates, :category_id
  end
end
