class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :firstName
      t.string :lastName
      t.boolean :active
      t.boolean :admin
      t.string :phone
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end