class CreateAnswerchoices < ActiveRecord::Migration[7.0]
  def change
    create_table :answerchoices do |t|
      t.text :text, null: false
      t.references :question, null:false, foreign_key: true 

      t.timestamps
    end
  end
end
