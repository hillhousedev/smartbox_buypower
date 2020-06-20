class CreateAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :awards do |t|
      t.string :name
      t.integer :year
      t.integer :student_id

      t.timestamps
    end
  end
end
