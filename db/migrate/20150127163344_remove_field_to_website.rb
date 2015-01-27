class RemoveFieldToWebsite < ActiveRecord::Migration
  def change
  	remove_column :websites, :fieldwebsite_id
  end
end
