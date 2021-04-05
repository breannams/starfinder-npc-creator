class AddAbilities < ActiveRecord::Migration[6.1]
  def change
    remove_column :npcs, :ability_scores
    add_column :npcs, :str_mod, :integer
    add_column :npcs, :dex_mod, :integer
    add_column :npcs, :con_mod, :integer
    add_column :npcs, :int_mod, :integer
    add_column :npcs, :wis_mod, :integer
    add_column :npcs, :char_mod, :integer
  end
end
