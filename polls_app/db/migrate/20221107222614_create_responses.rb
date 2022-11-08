class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.references :author, null: false, foreign_key: {to_table: :users}
      t.references :answer_choice, null: false, foreign_key: {to_table: :answerchoices}

      t.timestamps
    end
  end
end
