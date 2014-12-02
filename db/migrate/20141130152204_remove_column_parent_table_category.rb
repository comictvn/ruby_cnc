class RemoveColumnParentTableCategory < ActiveRecord::Migration
  def change
  	remove_column :categories, :parent
  end
end
