class AddAvatarToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :avatars, foreign_key: true
    remove_column :users, :avatar
  end
end
