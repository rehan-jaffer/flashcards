class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :front, null: false
      t.string :back, null: false
      t.string :card_type
      t.timestamps
      t.references :deck_id
    end
  end
end
