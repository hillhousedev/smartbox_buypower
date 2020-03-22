class CreateViewtesters < ActiveRecord::Migration[5.1]
  def change
    create_table :viewtesters do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
