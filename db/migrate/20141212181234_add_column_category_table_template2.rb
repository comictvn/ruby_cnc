class AddColumnCategoryTableTemplate2 < ActiveRecord::Migration
  def change
  	add_column :templates, :category_template_id, :integer
  end
end
