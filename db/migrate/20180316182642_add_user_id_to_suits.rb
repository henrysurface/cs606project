class AddUserIdToSuits < ActiveRecord::Migration
  def change
    add_column :suits, :user_id, :integer
  end
end
