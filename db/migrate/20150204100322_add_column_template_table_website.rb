class AddColumnTemplateTableWebsite < ActiveRecord::Migration
  def change
  	add_reference :websites, :template, index: true
  end
end
