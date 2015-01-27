class CreateFieldWebsites < ActiveRecord::Migration
  def change
    create_table :field_websites do |t|
      t.string :title

      t.timestamps
    end
  end
end
