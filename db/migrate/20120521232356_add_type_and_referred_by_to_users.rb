class AddTypeAndReferredByToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type, :string
    add_column :users, :referred_by, :string
  end
end
