class AddSoftTokenToUsersAndNotes < ActiveRecord::Migration
  def change
    add_column :users, :soft_token, :string
    add_column :notes, :soft_token, :string
  end
end
