class CreateNpcs < ActiveRecord::Migration[6.1]
  def change

    create_table :npcs do |t|
      t.string :name
      t.integer :cr_rating
      t.integer :level
      t.integer :exp
      t.string :species
      t.string :class
      t.integer :hp
      t.integer :eac
      t.integer :kac
      t.integer :fort_save
      t.integer :ref_save
      t.integer :will_save
      t.integer :speed
      t.string :master_skill
      t.string :good_skill
      t.string :ability_scores
      t.integer :ability_mods
      t.string :offense_ability
      t.string :defense_ability
      t.string :immunities
      t.string :melee
      t.string :ranged
      t.string :special_ability
      t.string :gear
      t.string :loot
      t.string :optional_info
      t.belongs_to :user
    end
  end
end
