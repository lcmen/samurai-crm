class AddAdminToSamuraiUsers < ActiveRecord::Migration
  def change
    add_column :samurai_users, :admin, :boolean
  end
end
