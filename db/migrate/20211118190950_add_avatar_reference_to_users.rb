class AddAvatarReferenceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :avatar, foreign_key: true
  end
end
