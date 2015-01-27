class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :storename
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :domain
      t.references :user, index: true

      t.timestamps
    end
  end
end
