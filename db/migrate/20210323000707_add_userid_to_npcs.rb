class AddUseridToNpcs < ActiveRecord::Migration[6.1]
  def change
      add_column :npc, :user_id, :integer
  end
end
