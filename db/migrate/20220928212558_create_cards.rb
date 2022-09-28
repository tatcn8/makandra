class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :title, null: false
      t.text :body, null: false 
      t.references :deck, foreign_key: true
      t.timestamps
    end
  end
end
