class AddFildsToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :name, :string
    add_column :admins, :authentication_token, :string, limit: 25
    add_index :admins, :authentication_token, unique: true
  end
end
