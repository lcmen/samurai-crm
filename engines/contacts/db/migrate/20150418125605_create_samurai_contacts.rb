class CreateSamuraiContacts < ActiveRecord::Migration
  def change
    create_table :samurai_contacts_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.references :user, index: true, foreign_key: :samurai_users

      t.timestamps null: false
    end
  end
end
