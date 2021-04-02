class ChangeArmorcolumnAddOtherequipColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :npcs, :armor_weapons, :armor
    add_column :npcs, :other_equip, :string
  end
end
