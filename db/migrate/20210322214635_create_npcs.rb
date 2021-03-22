class CreateNpcs < ActiveRecord::Migration[6.1]
  def change

    create_table :npc do |t|
      t.string :name
      t.integer :cr_rating
      t.integer :level
      t.string :species
      t.string :class
      t.integer :hp
      t.integer :eac
      t.integer :kac
      t.integer :saving_throws
      t.integer :speed
      t.integer :ability_scores
      t.integer :skills
      t.string :special_abilities
    end
  end
end
