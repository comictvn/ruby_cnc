class CreateImageTemplates < ActiveRecord::Migration
  def change
    create_table :image_templates do |t|
      t.references :image, index: true
      t.references :template, index: true

      t.timestamps
    end
  end
end
