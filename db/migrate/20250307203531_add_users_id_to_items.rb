class AddUsersIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :users_id, :integer
    add_foreign_key :items, :users, column: :users_id
  end
end
