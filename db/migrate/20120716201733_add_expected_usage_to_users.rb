class AddExpectedUsageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :expected_usage, :string
  end
end
