class ChangeClassColumnNameInNpcs < ActiveRecord::Migration[6.1]
  def change
    rename_column :npcs, :class, :npc_class
  end
end
