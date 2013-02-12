class CreateGroupReaderSubjects < ActiveRecord::Migration
  def change
    create_table :group_reader_subjects do |t|
      t.references :group
      t.references :reader
      t.references :subject
      t.integer :minutes
      t.integer :priority
      t.timestamps
    end
    add_index :group_reader_subjects, :group_id
    add_index :group_reader_subjects, :reader_id
    add_index :group_reader_subjects, :subject_id
  end
end
