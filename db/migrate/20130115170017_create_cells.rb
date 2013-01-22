class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.references :group_reader_subject
      t.references :lesson
      t.references :classroom

      t.timestamps
    end
    add_index :cells, :group_reader_subject_id
    add_index :cells, :lesson_id
    add_index :cells, :classroom_id
  end
end
