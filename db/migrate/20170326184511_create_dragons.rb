class CreateDragons < ActiveRecord::Migration[5.0]
  def change
    create_table :dragons do |t|
      t.string :category
      t.string :color
      t.string :size
      t.integer :age
      t.string :alignment

      t.timestamps
    end
  end
end
