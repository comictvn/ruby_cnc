class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.string :note
      t.text :content
      t.string :designer
      t.string :demo

      t.timestamps
    end
  end
end
