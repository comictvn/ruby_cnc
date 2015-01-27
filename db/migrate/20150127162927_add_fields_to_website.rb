class AddFieldsToWebsite < ActiveRecord::Migration
  def change
    add_reference :websites, :field_website, index: true
  end
end
