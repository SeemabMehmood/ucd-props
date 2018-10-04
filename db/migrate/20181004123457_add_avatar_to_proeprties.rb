class AddAvatarToProeprties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :avatar, :string
  end
end
