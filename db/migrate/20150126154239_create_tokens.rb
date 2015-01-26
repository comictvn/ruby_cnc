class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :email
      t.string :uid
      t.string :token
      t.string :expiration_date
      t.references :user, index: true

      t.timestamps
    end
  end
end
