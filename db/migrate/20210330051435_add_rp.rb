class AddRp < ActiveRecord::Migration[6.1]
  def change
    add_column :npcs, :rp, :integer
  end
end
