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
      t.string :higher_ability_mod
      t.string :lower_ability_mod
      t.string :special_abilities
      t.string :optional_info
      t.belongs_to :user
    end
  end
end
