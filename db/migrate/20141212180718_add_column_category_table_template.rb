class AddColumnCategoryTableTemplate < ActiveRecord::Migration
  def change
  	add_column :templates, :category_id, :integer
  end
end
