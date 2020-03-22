class CreateTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :tokens do |t|
      t.string :amount
      t.string :toks

      t.timestamps
    end
  end
end
