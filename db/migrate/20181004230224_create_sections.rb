class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :semester
      t.integer :number
      t.references :course, foreign_key: true
      t.integer :room_number

      t.timestamps
    end
  end
end
