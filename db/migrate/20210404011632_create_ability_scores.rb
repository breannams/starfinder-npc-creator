class CreateAbilityScores < ActiveRecord::Migration[6.1]
  def change
    create_table :ability_scores do |t|
      t.string :name
      t.integer :modifier
  end
end
end
